package com.nianticlabs.pokemongoplus;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.util.Log;
import com.nianticlabs.pokemongoplus.ble.BluetoothDriver;
import com.nianticlabs.pokemongoplus.ble.Peripheral;
import com.nianticlabs.pokemongoplus.ble.SfidaConstant.CentralState;
import com.nianticlabs.pokemongoplus.ble.SfidaConstant.PeripheralState;
import com.nianticlabs.pokemongoplus.ble.callback.CentralStateCallback;
import com.nianticlabs.pokemongoplus.ble.callback.ScanCallback;
import java.util.HashMap;
import java.util.Map;

public class SfidaBluetoothDriver extends BluetoothDriver {
    private static final String TAG;
    private BluetoothAdapter bluetoothAdapter;
    private Context context;
    private boolean isScanning;
    private long nativeHandle;
    private Peripheral peripheral;
    private Map<String, SfidaPeripheral> peripheralMap;
    private ScanCallback scanCallback;
    private HandlerExecutor serialExecutor;
    private SfidaScanCallback sfidaScanCallback;

    /* renamed from: com.nianticlabs.pokemongoplus.SfidaBluetoothDriver.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ ScanCallback val$callback;
        final /* synthetic */ String val$peripheralName;

        AnonymousClass3(ScanCallback scanCallback, String str) {
            this.val$callback = scanCallback;
            this.val$peripheralName = str;
        }

        public void run() {
            Log.d(SfidaBluetoothDriver.TAG, String.format("Tid: %d startScanning()", new Object[]{Long.valueOf(Thread.currentThread().getId())}));
            SfidaBluetoothDriver.this.releasePeripherals();
            SfidaBluetoothDriver.this.scanCallback = this.val$callback;
            if (SfidaBluetoothDriver.this.isEnabledBluetoothLe()) {
                SfidaBluetoothDriver.this.sfidaScanCallback = new SfidaScanCallback(this.val$peripheralName);
                SfidaBluetoothDriver.this.bluetoothAdapter.startLeScan(SfidaBluetoothDriver.this.sfidaScanCallback);
            }
        }
    }

    private class SfidaScanCallback implements LeScanCallback {
        private String peripheralName;

        /* renamed from: com.nianticlabs.pokemongoplus.SfidaBluetoothDriver.SfidaScanCallback.1 */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ String val$address;
            final /* synthetic */ BluetoothDevice val$device;
            final /* synthetic */ byte[] val$scanRecord;

            AnonymousClass1(BluetoothDevice bluetoothDevice, String str, byte[] bArr) {
                this.val$device = bluetoothDevice;
                this.val$address = str;
                this.val$scanRecord = bArr;
            }

            public void run() {
                if (SfidaBluetoothDriver.this.IsScanning()) {
                    String deviceName = this.val$device.getName();
                    if (deviceName != null && deviceName.contains(SfidaScanCallback.this.peripheralName) && SfidaBluetoothDriver.this.scanCallback != null) {
                        SfidaPeripheral foundPeripheral;
                        if (SfidaBluetoothDriver.this.peripheralMap.containsKey(this.val$address)) {
                            foundPeripheral = (SfidaPeripheral) SfidaBluetoothDriver.this.peripheralMap.get(this.val$address);
                            foundPeripheral.setScanRecord(this.val$scanRecord);
                        } else {
                            Log.d(SfidaBluetoothDriver.TAG, String.format("-+- SfidaBluetoothDriver SfidaScanCallback new peripheral: %s", new Object[]{this.val$address}));
                            foundPeripheral = new SfidaPeripheral(SfidaBluetoothDriver.this.serialExecutor, SfidaBluetoothDriver.this.context, this.val$device, this.val$scanRecord);
                            SfidaBluetoothDriver.this.peripheralMap.put(this.val$address, foundPeripheral);
                        }
                        SfidaBluetoothDriver.this.scanCallback.onScan(foundPeripheral);
                    }
                }
            }
        }

        public SfidaScanCallback(String peripheralName) {
            this.peripheralName = peripheralName;
        }

        public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {
            SfidaBluetoothDriver.this.serialExecutor.execute(new AnonymousClass1(device, device.getAddress(), scanRecord));
        }
    }

    private native void nativeScanCallback(Peripheral peripheral);

    private native void nativeStartCallback(int i);

    static {
        TAG = SfidaBluetoothDriver.class.getSimpleName();
    }

    public SfidaBluetoothDriver(Context context) {
        this.peripheralMap = new HashMap();
        this.serialExecutor = new HandlerExecutor("SfidaBluetoothDriver");
        this.context = context;
    }

    public boolean IsScanning() {
        boolean z;
        synchronized (this) {
            z = this.isScanning;
        }
        return z;
    }

    private void SetIsScanning(boolean isScanning) {
        synchronized (this) {
            this.isScanning = isScanning;
        }
    }

    public int start(CentralStateCallback callback) {
        this.serialExecutor.maybeAssertOnThread();
        Log.e(TAG, String.format("Tid: %d start()", new Object[]{Long.valueOf(Thread.currentThread().getId())}));
        BluetoothManager bluetoothManager = SfidaUtils.getBluetoothManager(this.context);
        if (bluetoothManager != null) {
            this.bluetoothAdapter = bluetoothManager.getAdapter();
            callback.OnStateChanged(this.bluetoothAdapter.isEnabled() ? CentralState.PoweredOn : CentralState.PoweredOff);
        } else {
            Log.e(TAG, "start(CentralStateCallback): Could not find bluetooth manager.");
            callback.OnStateChanged(CentralState.Unknown);
        }
        return 0;
    }

    public void stop(int unusedTag) {
        Log.e(TAG, String.format("Tid: %d stop()", new Object[]{Long.valueOf(Thread.currentThread().getId())}));
        this.serialExecutor.execute(new Runnable() {
            public void run() {
                SfidaBluetoothDriver.this.releasePeripherals();
            }
        });
        this.serialExecutor.stop();
    }

    public void stopDriver() {
        stop(0);
    }

    public void startDriver() {
        this.serialExecutor.execute(new Runnable() {
            public void run() {
                Log.e(SfidaBluetoothDriver.TAG, String.format("Tid: %d startDriver()", new Object[]{Long.valueOf(Thread.currentThread().getId())}));
                SfidaBluetoothDriver.this.start(new CentralStateCallback() {
                    public void OnStateChanged(CentralState state) {
                        Log.e(SfidaBluetoothDriver.TAG, String.format("Tid: %d startDriver(), OnStateChanged", new Object[]{Long.valueOf(Thread.currentThread().getId())}));
                        SfidaBluetoothDriver.this.serialExecutor.maybeAssertOnThread();
                        SfidaBluetoothDriver.this.nativeStartCallback(state.getInt());
                    }
                });
            }
        });
    }

    public void releasePeripherals() {
        Log.e(TAG, String.format("Tid: %d releasePeripherals()", new Object[]{Long.valueOf(Thread.currentThread().getId())}));
        Map<String, SfidaPeripheral> continuing = new HashMap();
        for (SfidaPeripheral peripheral : this.peripheralMap.values()) {
            PeripheralState state = peripheral.getState();
            if (state == PeripheralState.Disconnected || state == PeripheralState.Disconnecting) {
                peripheral.onDestroy();
            } else {
                continuing.put(peripheral.getAddress(), peripheral);
            }
        }
        this.peripheralMap.clear();
        this.peripheralMap = continuing;
    }

    public void startScanning(String peripheralName, ScanCallback callback) {
        if (!IsScanning()) {
            SetIsScanning(true);
            this.serialExecutor.execute(new AnonymousClass3(callback, peripheralName));
        }
    }

    public void startScanning(String peripheralName) {
        startScanning(peripheralName, new ScanCallback() {
            public void onScan(Peripheral peripheral) {
                SfidaBluetoothDriver.this.nativeScanCallback(peripheral);
            }
        });
    }

    public void stopScanning(String peripheralName) {
        if (IsScanning()) {
            SetIsScanning(false);
            this.serialExecutor.execute(new Runnable() {
                public void run() {
                    Log.d(SfidaBluetoothDriver.TAG, String.format("Tid: %d stopScanning()", new Object[]{Long.valueOf(Thread.currentThread().getId())}));
                    try {
                        SfidaBluetoothDriver.this.bluetoothAdapter.stopLeScan(SfidaBluetoothDriver.this.sfidaScanCallback);
                    } catch (IllegalArgumentException e) {
                        Log.d(SfidaBluetoothDriver.TAG, String.format("-+- SfidaBluetoothDriver stopScanning IllegalArgumentException", new Object[0]));
                    }
                }
            });
        }
    }

    public boolean isEnabledBluetoothLe() {
        if (this.bluetoothAdapter == null || !this.bluetoothAdapter.isEnabled()) {
            return false;
        }
        return true;
    }
}
