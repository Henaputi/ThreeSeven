package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;

public final class OperatorTimeout<T> extends OperatorTimeoutBase<T> {

    /* renamed from: rx.internal.operators.OperatorTimeout.1 */
    class AnonymousClass1 implements FirstTimeoutStub<T> {
        final /* synthetic */ TimeUnit val$timeUnit;
        final /* synthetic */ long val$timeout;

        /* renamed from: rx.internal.operators.OperatorTimeout.1.1 */
        class AnonymousClass1 implements Action0 {
            final /* synthetic */ Long val$seqId;
            final /* synthetic */ TimeoutSubscriber val$timeoutSubscriber;

            AnonymousClass1(TimeoutSubscriber timeoutSubscriber, Long l) {
                this.val$timeoutSubscriber = timeoutSubscriber;
                this.val$seqId = l;
            }

            public void call() {
                this.val$timeoutSubscriber.onTimeout(this.val$seqId.longValue());
            }
        }

        AnonymousClass1(long j, TimeUnit timeUnit) {
            this.val$timeout = j;
            this.val$timeUnit = timeUnit;
        }

        public Subscription call(TimeoutSubscriber<T> timeoutSubscriber, Long seqId, Worker inner) {
            return inner.schedule(new AnonymousClass1(timeoutSubscriber, seqId), this.val$timeout, this.val$timeUnit);
        }
    }

    /* renamed from: rx.internal.operators.OperatorTimeout.2 */
    class AnonymousClass2 implements TimeoutStub<T> {
        final /* synthetic */ TimeUnit val$timeUnit;
        final /* synthetic */ long val$timeout;

        /* renamed from: rx.internal.operators.OperatorTimeout.2.1 */
        class AnonymousClass1 implements Action0 {
            final /* synthetic */ Long val$seqId;
            final /* synthetic */ TimeoutSubscriber val$timeoutSubscriber;

            AnonymousClass1(TimeoutSubscriber timeoutSubscriber, Long l) {
                this.val$timeoutSubscriber = timeoutSubscriber;
                this.val$seqId = l;
            }

            public void call() {
                this.val$timeoutSubscriber.onTimeout(this.val$seqId.longValue());
            }
        }

        AnonymousClass2(long j, TimeUnit timeUnit) {
            this.val$timeout = j;
            this.val$timeUnit = timeUnit;
        }

        public Subscription call(TimeoutSubscriber<T> timeoutSubscriber, Long seqId, T t, Worker inner) {
            return inner.schedule(new AnonymousClass1(timeoutSubscriber, seqId), this.val$timeout, this.val$timeUnit);
        }
    }

    public /* bridge */ /* synthetic */ Subscriber call(Subscriber x0) {
        return super.call(x0);
    }

    public OperatorTimeout(long timeout, TimeUnit timeUnit, Observable<? extends T> other, Scheduler scheduler) {
        super(new AnonymousClass1(timeout, timeUnit), new AnonymousClass2(timeout, timeUnit), other, scheduler);
    }
}
