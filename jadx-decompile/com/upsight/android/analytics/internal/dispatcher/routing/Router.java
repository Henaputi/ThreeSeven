package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.analytics.dispatcher.EndpointResponse;
import com.upsight.android.analytics.internal.DataStoreRecord;
import com.upsight.android.analytics.internal.dispatcher.delivery.OnDeliveryListener;
import com.upsight.android.analytics.internal.dispatcher.delivery.OnResponseListener;
import com.upsight.android.analytics.internal.dispatcher.routing.Packet.State;
import com.upsight.android.analytics.internal.dispatcher.util.ByFilterSelector;
import com.upsight.mediation.mraid.properties.MRAIDResizeProperties;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.functions.Action0;
import spacemadness.com.lunarconsole.R;

public class Router implements OnDeliveryListener, OnResponseListener {
    private final AtomicInteger mEventsInRouting;
    private boolean mIsFinishRequested;
    private final ByFilterSelector<Route> mRouteSelector;
    private final RoutingListener mRoutingListener;
    private final Worker mWorker;

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.routing.Router.1 */
    class AnonymousClass1 implements Action0 {
        final /* synthetic */ Packet val$packet;

        AnonymousClass1(Packet packet) {
            this.val$packet = packet;
        }

        public void call() {
            switch (AnonymousClass3.$SwitchMap$com$upsight$android$analytics$internal$dispatcher$routing$Packet$State[this.val$packet.getState().ordinal()]) {
                case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    if (this.val$packet.hasMoreOptionsToTry()) {
                        this.val$packet.routeToNext();
                        return;
                    }
                    Router.this.mRoutingListener.onDelivery(this.val$packet.getRecord(), false, false, this.val$packet.getDeliveryHistory());
                    Router.this.finishPacket();
                case R.styleable.LoadingImageView_circleCrop /*2*/:
                    Router.this.mRoutingListener.onDelivery(this.val$packet.getRecord(), true, false, null);
                    Router.this.finishPacket();
                case MRAIDResizeProperties.CUSTOM_CLOSE_POSITION_CENTER /*3*/:
                    Router.this.mRoutingListener.onDelivery(this.val$packet.getRecord(), false, true, this.val$packet.getDeliveryHistory());
                    Router.this.finishPacket();
                default:
            }
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.routing.Router.2 */
    class AnonymousClass2 implements Action0 {
        final /* synthetic */ EndpointResponse val$response;

        AnonymousClass2(EndpointResponse endpointResponse) {
            this.val$response = endpointResponse;
        }

        public void call() {
            Router.this.mRoutingListener.onResponse(this.val$response);
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.routing.Router.3 */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$upsight$android$analytics$internal$dispatcher$routing$Packet$State;

        static {
            $SwitchMap$com$upsight$android$analytics$internal$dispatcher$routing$Packet$State = new int[State.values().length];
            try {
                $SwitchMap$com$upsight$android$analytics$internal$dispatcher$routing$Packet$State[State.UNDELIVERED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$upsight$android$analytics$internal$dispatcher$routing$Packet$State[State.DELIVERED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$upsight$android$analytics$internal$dispatcher$routing$Packet$State[State.TRASHED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    Router(Scheduler scheduler, ByFilterSelector<Route> routeSelector, RoutingListener routingListener) {
        this.mEventsInRouting = new AtomicInteger();
        this.mWorker = scheduler.createWorker();
        this.mRouteSelector = routeSelector;
        this.mRoutingListener = routingListener;
    }

    public boolean routeEvent(DataStoreRecord record) {
        if (this.mIsFinishRequested) {
            throw new IllegalStateException("Router is requested to finish routing");
        }
        Route route = (Route) this.mRouteSelector.select(record.getSourceType());
        if (route == null || route.getStepsCount() == 0) {
            return false;
        }
        new Packet(record, new Route(route)).routeToNext();
        this.mEventsInRouting.incrementAndGet();
        return true;
    }

    public void finishRouting() {
        this.mIsFinishRequested = true;
        if (this.mEventsInRouting.get() == 0) {
            this.mRoutingListener.onRoutingFinished(this);
        }
    }

    public void onDelivery(Packet packet) {
        this.mWorker.schedule(new AnonymousClass1(packet));
    }

    public void onResponse(EndpointResponse response) {
        this.mWorker.schedule(new AnonymousClass2(response));
    }

    private void finishPacket() {
        int eventsInRouting = this.mEventsInRouting.decrementAndGet();
        if (this.mIsFinishRequested && eventsInRouting == 0) {
            this.mRoutingListener.onRoutingFinished(this);
        }
    }
}
