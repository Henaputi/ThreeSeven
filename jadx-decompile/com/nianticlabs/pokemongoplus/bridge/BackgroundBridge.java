package com.nianticlabs.pokemongoplus.bridge;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.location.places.Place;
import com.mopub.volley.Request.Method;
import com.nianticlabs.pokemongoplus.ble.BluetoothGattSupport;
import com.nianticlabs.pokemongoplus.bridge.BackgroundBridgeMessage.MessageHandler;
import com.nianticlabs.pokemongoplus.bridge.ClientBridgeMessage.Action;
import com.upsight.mediation.mraid.properties.MRAIDResizeProperties;
import spacemadness.com.lunarconsole.BuildConfig;
import spacemadness.com.lunarconsole.R;

public class BackgroundBridge {
    private static final String TAG;
    public static Context currentContext;
    private static MessageHandler messageHandler;
    private long nativeHandle;

    /* renamed from: com.nianticlabs.pokemongoplus.bridge.BackgroundBridge.1 */
    static class AnonymousClass1 implements Runnable {
        final /* synthetic */ BackgroundBridgeMessage val$message;

        AnonymousClass1(BackgroundBridgeMessage backgroundBridgeMessage) {
            this.val$message = backgroundBridgeMessage;
        }

        public void run() {
            Log.i(BackgroundBridge.TAG, "sendMessage: " + this.val$message.getAction());
            BackgroundBridge.messageHandler.handleMessage(this.val$message);
        }
    }

    /* renamed from: com.nianticlabs.pokemongoplus.bridge.BackgroundBridge.2 */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action;

        static {
            $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action = new int[Action.values().length];
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.START_ACTION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.RESUME_ACTION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.PAUSE_ACTION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.STOP_ACTION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.START_SCANNING_ACTION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.STOP_SCANNING_ACTION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.START_SESSION_ACTION.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.STOP_SESSION_ACTION.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[Action.REQUEST_PGP_STATE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    private native void initialize();

    public static native void nativeInit();

    public native void dispose();

    public native void pause();

    public native void requestPgpState();

    public native void resume();

    public native void start();

    public native void startScanning();

    public native void startSession(String str, String str2, byte[] bArr, long j);

    public native void stop();

    public native void stopScanning();

    public native void stopSession();

    static {
        TAG = BackgroundBridge.class.getSimpleName();
    }

    protected BackgroundBridge() {
        initialize();
        Log.w(TAG, "Initialize();");
    }

    public static BackgroundBridge createBridge(Context context, MessageHandler messageHandler) {
        messageHandler = messageHandler;
        currentContext = context;
        Log.w(TAG, BackgroundBridge.class.toString());
        nativeInit();
        Log.w(TAG, "BackgroundBridge createBridge");
        BackgroundBridge pgpwrap = new BackgroundBridge();
        Log.w(TAG, "new BackgroundBridge");
        return pgpwrap;
    }

    public void destroyBridge() {
        dispose();
    }

    private static void sendMessage(BackgroundBridgeMessage message) {
        new Handler(currentContext.getMainLooper()).post(new AnonymousClass1(message));
    }

    public static void sendUpdateTimestamp(long timestampMs) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.UPDATE_TIMESTAMP_ACTION).setTimestamp(timestampMs));
    }

    public static void sendSfidaState(int state) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.SFIDA_STATE_ACTION).setArg1(state));
    }

    public static void sendEncounterId(long encounterId) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.ENCOUNTER_ID_ACTION).setEncounterId(encounterId));
    }

    public static void sendPokestopId(String pokestop) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.POKESTOP_ACTION).setPokestopId(pokestop));
    }

    public static void sendCentralState(int state) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.CENTRAL_STATE_ACTION).setArg1(state));
    }

    public static void sendScannedSfida(String deviceId, int buttonValue) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.SCANNED_SFIDA_ACTION).setArg1(buttonValue).setDeviceId(deviceId));
    }

    public static void sendIsScanning(int isScanning) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.IS_SCANNING_ACTION).setArg1(isScanning));
    }

    public static void sendPluginState(int state) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.PLUGIN_STATE_ACTION).setArg1(state));
    }

    public static void sendBatteryLevel(double batteryLevel) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.BATTERY_LEVEL_ACTION).setBatteryLevel(batteryLevel));
    }

    public static void sendNotification(int messageId, String arg) {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.SEND_NOTIFICATION_ACTION).setArg1(messageId).setNotification(arg));
    }

    public static void stopNotification() {
        sendMessage(new BackgroundBridgeMessage().setAction(BackgroundBridgeMessage.Action.STOP_NOTIFICATION_ACTION));
    }

    public void onClientMessage(ClientBridgeMessage message) {
        Action action = message.getAction();
        Log.i(TAG, "onClientMessage - " + action);
        Log.i(TAG, "BackgroundService onClientMessage action = " + action);
        switch (AnonymousClass2.$SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action[action.ordinal()]) {
            case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                start();
                break;
            case R.styleable.LoadingImageView_circleCrop /*2*/:
                resume();
                break;
            case MRAIDResizeProperties.CUSTOM_CLOSE_POSITION_CENTER /*3*/:
                pause();
                break;
            case MRAIDResizeProperties.CUSTOM_CLOSE_POSITION_BOTTOM_LEFT /*4*/:
                stop();
                break;
            case MRAIDResizeProperties.CUSTOM_CLOSE_POSITION_BOTTOM_CENTER /*5*/:
                startScanning();
                break;
            case MRAIDResizeProperties.CUSTOM_CLOSE_POSITION_BOTTOM_RIGHT /*6*/:
                stopScanning();
                break;
            case Method.PATCH /*7*/:
                String hostPort = message.getHostPort();
                String device = message.getDeviceId();
                byte[] authToken = message.getAuthToken();
                long encounterId = message.getEncounterId();
                String str = BuildConfig.FLAVOR;
                Log.i(TAG, String.format("Start session: %s %s %d \"%s\"", new Object[]{hostPort, device, Long.valueOf(encounterId), str}));
                startSession(hostPort, device, authToken, encounterId);
                break;
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                stopSession();
                break;
            case Place.TYPE_BAR /*9*/:
                requestPgpState();
                break;
            default:
                Log.e(TAG, "Can't handle intent message: " + action);
                break;
        }
        Log.i(TAG, "onClientMessage DONE - " + action);
    }
}
