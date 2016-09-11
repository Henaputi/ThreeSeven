package rx.internal.operators;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;

public final class OperatorSubscribeOn<T> implements OnSubscribe<T> {
    final Scheduler scheduler;
    final Observable<T> source;

    /* renamed from: rx.internal.operators.OperatorSubscribeOn.1 */
    class AnonymousClass1 implements Action0 {
        final /* synthetic */ Worker val$inner;
        final /* synthetic */ Subscriber val$subscriber;

        /* renamed from: rx.internal.operators.OperatorSubscribeOn.1.1 */
        class AnonymousClass1 extends Subscriber<T> {
            final /* synthetic */ Thread val$t;

            /* renamed from: rx.internal.operators.OperatorSubscribeOn.1.1.1 */
            class AnonymousClass1 implements Producer {
                final /* synthetic */ Producer val$p;

                /* renamed from: rx.internal.operators.OperatorSubscribeOn.1.1.1.1 */
                class AnonymousClass1 implements Action0 {
                    final /* synthetic */ long val$n;

                    AnonymousClass1(long j) {
                        this.val$n = j;
                    }

                    public void call() {
                        AnonymousClass1.this.val$p.request(this.val$n);
                    }
                }

                AnonymousClass1(Producer producer) {
                    this.val$p = producer;
                }

                public void request(long n) {
                    if (AnonymousClass1.this.val$t == Thread.currentThread()) {
                        this.val$p.request(n);
                    } else {
                        AnonymousClass1.this.val$inner.schedule(new AnonymousClass1(n));
                    }
                }
            }

            AnonymousClass1(Subscriber x0, Thread thread) {
                this.val$t = thread;
                super(x0);
            }

            public void onNext(T t) {
                AnonymousClass1.this.val$subscriber.onNext(t);
            }

            public void onError(Throwable e) {
                try {
                    AnonymousClass1.this.val$subscriber.onError(e);
                } finally {
                    AnonymousClass1.this.val$inner.unsubscribe();
                }
            }

            public void onCompleted() {
                try {
                    AnonymousClass1.this.val$subscriber.onCompleted();
                } finally {
                    AnonymousClass1.this.val$inner.unsubscribe();
                }
            }

            public void setProducer(Producer p) {
                AnonymousClass1.this.val$subscriber.setProducer(new AnonymousClass1(p));
            }
        }

        AnonymousClass1(Subscriber subscriber, Worker worker) {
            this.val$subscriber = subscriber;
            this.val$inner = worker;
        }

        public void call() {
            OperatorSubscribeOn.this.source.unsafeSubscribe(new AnonymousClass1(this.val$subscriber, Thread.currentThread()));
        }
    }

    public OperatorSubscribeOn(Observable<T> source, Scheduler scheduler) {
        this.scheduler = scheduler;
        this.source = source;
    }

    public void call(Subscriber<? super T> subscriber) {
        Worker inner = this.scheduler.createWorker();
        subscriber.add(inner);
        inner.schedule(new AnonymousClass1(subscriber, inner));
    }
}
