package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;

public final class OperatorDelay<T> implements Operator<T, T> {
    final long delay;
    final Scheduler scheduler;
    final TimeUnit unit;

    /* renamed from: rx.internal.operators.OperatorDelay.1 */
    class AnonymousClass1 extends Subscriber<T> {
        boolean done;
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ Worker val$worker;

        /* renamed from: rx.internal.operators.OperatorDelay.1.2 */
        class AnonymousClass2 implements Action0 {
            final /* synthetic */ Throwable val$e;

            AnonymousClass2(Throwable th) {
                this.val$e = th;
            }

            public void call() {
                if (!AnonymousClass1.this.done) {
                    AnonymousClass1.this.done = true;
                    AnonymousClass1.this.val$child.onError(this.val$e);
                    AnonymousClass1.this.val$worker.unsubscribe();
                }
            }
        }

        /* renamed from: rx.internal.operators.OperatorDelay.1.3 */
        class AnonymousClass3 implements Action0 {
            final /* synthetic */ Object val$t;

            AnonymousClass3(Object obj) {
                this.val$t = obj;
            }

            public void call() {
                if (!AnonymousClass1.this.done) {
                    AnonymousClass1.this.val$child.onNext(this.val$t);
                }
            }
        }

        AnonymousClass1(Subscriber x0, Worker worker, Subscriber subscriber) {
            this.val$worker = worker;
            this.val$child = subscriber;
            super(x0);
        }

        public void onCompleted() {
            this.val$worker.schedule(new Action0() {
                public void call() {
                    if (!AnonymousClass1.this.done) {
                        AnonymousClass1.this.done = true;
                        AnonymousClass1.this.val$child.onCompleted();
                    }
                }
            }, OperatorDelay.this.delay, OperatorDelay.this.unit);
        }

        public void onError(Throwable e) {
            this.val$worker.schedule(new AnonymousClass2(e));
        }

        public void onNext(T t) {
            this.val$worker.schedule(new AnonymousClass3(t), OperatorDelay.this.delay, OperatorDelay.this.unit);
        }
    }

    public OperatorDelay(long delay, TimeUnit unit, Scheduler scheduler) {
        this.delay = delay;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        Worker worker = this.scheduler.createWorker();
        child.add(worker);
        return new AnonymousClass1(child, worker, child);
    }
}
