package rx.android.schedulers;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.android.plugins.RxAndroidPlugins;
import rx.functions.Action0;
import rx.internal.schedulers.ScheduledAction;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.Subscriptions;

public final class HandlerScheduler extends Scheduler {
    private final Handler handler;

    static class HandlerWorker extends Worker {
        private final CompositeSubscription compositeSubscription;
        private final Handler handler;

        /* renamed from: rx.android.schedulers.HandlerScheduler.HandlerWorker.1 */
        class AnonymousClass1 implements Action0 {
            final /* synthetic */ ScheduledAction val$scheduledAction;

            AnonymousClass1(ScheduledAction scheduledAction) {
                this.val$scheduledAction = scheduledAction;
            }

            public void call() {
                HandlerWorker.this.handler.removeCallbacks(this.val$scheduledAction);
            }
        }

        HandlerWorker(Handler handler) {
            this.compositeSubscription = new CompositeSubscription();
            this.handler = handler;
        }

        public void unsubscribe() {
            this.compositeSubscription.unsubscribe();
        }

        public boolean isUnsubscribed() {
            return this.compositeSubscription.isUnsubscribed();
        }

        public Subscription schedule(Action0 action, long delayTime, TimeUnit unit) {
            if (this.compositeSubscription.isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            Subscription scheduledAction = new ScheduledAction(RxAndroidPlugins.getInstance().getSchedulersHook().onSchedule(action));
            scheduledAction.addParent(this.compositeSubscription);
            this.compositeSubscription.add(scheduledAction);
            this.handler.postDelayed(scheduledAction, unit.toMillis(delayTime));
            scheduledAction.add(Subscriptions.create(new AnonymousClass1(scheduledAction)));
            return scheduledAction;
        }

        public Subscription schedule(Action0 action) {
            return schedule(action, 0, TimeUnit.MILLISECONDS);
        }
    }

    public static HandlerScheduler from(Handler handler) {
        if (handler != null) {
            return new HandlerScheduler(handler);
        }
        throw new NullPointerException("handler == null");
    }

    HandlerScheduler(Handler handler) {
        this.handler = handler;
    }

    public Worker createWorker() {
        return new HandlerWorker(this.handler);
    }
}
