package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Notification;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observable.Operator;
import rx.Producer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.internal.producers.ProducerArbiter;
import rx.observers.Subscribers;
import rx.schedulers.Schedulers;
import rx.subjects.BehaviorSubject;
import rx.subscriptions.SerialSubscription;

public final class OnSubscribeRedo<T> implements OnSubscribe<T> {
    static final Func1<Observable<? extends Notification<?>>, Observable<?>> REDO_INFINITE;
    private final Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> controlHandlerFunction;
    private final Scheduler scheduler;
    final Observable<T> source;
    final boolean stopOnComplete;
    final boolean stopOnError;

    /* renamed from: rx.internal.operators.OnSubscribeRedo.2 */
    class AnonymousClass2 implements Action0 {
        final /* synthetic */ ProducerArbiter val$arbiter;
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ AtomicLong val$consumerCapacity;
        final /* synthetic */ SerialSubscription val$sourceSubscriptions;
        final /* synthetic */ BehaviorSubject val$terminals;

        AnonymousClass2(Subscriber subscriber, BehaviorSubject behaviorSubject, ProducerArbiter producerArbiter, AtomicLong atomicLong, SerialSubscription serialSubscription) {
            this.val$child = subscriber;
            this.val$terminals = behaviorSubject;
            this.val$arbiter = producerArbiter;
            this.val$consumerCapacity = atomicLong;
            this.val$sourceSubscriptions = serialSubscription;
        }

        public void call() {
            if (!this.val$child.isUnsubscribed()) {
                Subscriber<T> terminalDelegatingSubscriber = new Subscriber<T>() {
                    boolean done;

                    public void onCompleted() {
                        if (!this.done) {
                            this.done = true;
                            unsubscribe();
                            AnonymousClass2.this.val$terminals.onNext(Notification.createOnCompleted());
                        }
                    }

                    public void onError(Throwable e) {
                        if (!this.done) {
                            this.done = true;
                            unsubscribe();
                            AnonymousClass2.this.val$terminals.onNext(Notification.createOnError(e));
                        }
                    }

                    public void onNext(T v) {
                        if (!this.done) {
                            AnonymousClass2.this.val$child.onNext(v);
                            decrementConsumerCapacity();
                            AnonymousClass2.this.val$arbiter.produced(1);
                        }
                    }

                    private void decrementConsumerCapacity() {
                        long cc;
                        do {
                            cc = AnonymousClass2.this.val$consumerCapacity.get();
                            if (cc == Long.MAX_VALUE) {
                                return;
                            }
                        } while (!AnonymousClass2.this.val$consumerCapacity.compareAndSet(cc, cc - 1));
                    }

                    public void setProducer(Producer producer) {
                        AnonymousClass2.this.val$arbiter.setProducer(producer);
                    }
                };
                this.val$sourceSubscriptions.set(terminalDelegatingSubscriber);
                OnSubscribeRedo.this.source.unsafeSubscribe(terminalDelegatingSubscriber);
            }
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeRedo.4 */
    class AnonymousClass4 implements Action0 {
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ AtomicLong val$consumerCapacity;
        final /* synthetic */ Observable val$restarts;
        final /* synthetic */ AtomicBoolean val$resumeBoundary;
        final /* synthetic */ Action0 val$subscribeToSource;
        final /* synthetic */ Worker val$worker;

        /* renamed from: rx.internal.operators.OnSubscribeRedo.4.1 */
        class AnonymousClass1 extends Subscriber<Object> {
            AnonymousClass1(Subscriber x0) {
                super(x0);
            }

            public void onCompleted() {
                AnonymousClass4.this.val$child.onCompleted();
            }

            public void onError(Throwable e) {
                AnonymousClass4.this.val$child.onError(e);
            }

            public void onNext(Object t) {
                if (!AnonymousClass4.this.val$child.isUnsubscribed()) {
                    if (AnonymousClass4.this.val$consumerCapacity.get() > 0) {
                        AnonymousClass4.this.val$worker.schedule(AnonymousClass4.this.val$subscribeToSource);
                    } else {
                        AnonymousClass4.this.val$resumeBoundary.compareAndSet(false, true);
                    }
                }
            }

            public void setProducer(Producer producer) {
                producer.request(Long.MAX_VALUE);
            }
        }

        AnonymousClass4(Observable observable, Subscriber subscriber, AtomicLong atomicLong, Worker worker, Action0 action0, AtomicBoolean atomicBoolean) {
            this.val$restarts = observable;
            this.val$child = subscriber;
            this.val$consumerCapacity = atomicLong;
            this.val$worker = worker;
            this.val$subscribeToSource = action0;
            this.val$resumeBoundary = atomicBoolean;
        }

        public void call() {
            this.val$restarts.unsafeSubscribe(new AnonymousClass1(this.val$child));
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeRedo.5 */
    class AnonymousClass5 implements Producer {
        final /* synthetic */ ProducerArbiter val$arbiter;
        final /* synthetic */ AtomicLong val$consumerCapacity;
        final /* synthetic */ AtomicBoolean val$resumeBoundary;
        final /* synthetic */ Action0 val$subscribeToSource;
        final /* synthetic */ Worker val$worker;

        AnonymousClass5(AtomicLong atomicLong, ProducerArbiter producerArbiter, AtomicBoolean atomicBoolean, Worker worker, Action0 action0) {
            this.val$consumerCapacity = atomicLong;
            this.val$arbiter = producerArbiter;
            this.val$resumeBoundary = atomicBoolean;
            this.val$worker = worker;
            this.val$subscribeToSource = action0;
        }

        public void request(long n) {
            if (n > 0) {
                BackpressureUtils.getAndAddRequest(this.val$consumerCapacity, n);
                this.val$arbiter.request(n);
                if (this.val$resumeBoundary.compareAndSet(true, false)) {
                    this.val$worker.schedule(this.val$subscribeToSource);
                }
            }
        }
    }

    public static final class RedoFinite implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final long count;

        public RedoFinite(long count) {
            this.count = count;
        }

        public Observable<?> call(Observable<? extends Notification<?>> ts) {
            return ts.map(new Func1<Notification<?>, Notification<?>>() {
                int num;

                {
                    this.num = 0;
                }

                public Notification<?> call(Notification<?> terminalNotification) {
                    if (RedoFinite.this.count == 0) {
                        return terminalNotification;
                    }
                    this.num++;
                    if (((long) this.num) <= RedoFinite.this.count) {
                        return Notification.createOnNext(Integer.valueOf(this.num));
                    }
                    return terminalNotification;
                }
            }).dematerialize();
        }
    }

    public static final class RetryWithPredicate implements Func1<Observable<? extends Notification<?>>, Observable<? extends Notification<?>>> {
        final Func2<Integer, Throwable, Boolean> predicate;

        public RetryWithPredicate(Func2<Integer, Throwable, Boolean> predicate) {
            this.predicate = predicate;
        }

        public Observable<? extends Notification<?>> call(Observable<? extends Notification<?>> ts) {
            return ts.scan(Notification.createOnNext(Integer.valueOf(0)), new Func2<Notification<Integer>, Notification<?>, Notification<Integer>>() {
                public Notification<Integer> call(Notification<Integer> n, Notification<?> term) {
                    int value = ((Integer) n.getValue()).intValue();
                    if (((Boolean) RetryWithPredicate.this.predicate.call(Integer.valueOf(value), term.getThrowable())).booleanValue()) {
                        return Notification.createOnNext(Integer.valueOf(value + 1));
                    }
                    return term;
                }
            });
        }
    }

    static {
        REDO_INFINITE = new Func1<Observable<? extends Notification<?>>, Observable<?>>() {
            public Observable<?> call(Observable<? extends Notification<?>> ts) {
                return ts.map(new Func1<Notification<?>, Notification<?>>() {
                    public Notification<?> call(Notification<?> notification) {
                        return Notification.createOnNext(null);
                    }
                });
            }
        };
    }

    public static <T> Observable<T> retry(Observable<T> source) {
        return retry((Observable) source, REDO_INFINITE);
    }

    public static <T> Observable<T> retry(Observable<T> source, long count) {
        if (count >= 0) {
            return count == 0 ? source : retry((Observable) source, new RedoFinite(count));
        } else {
            throw new IllegalArgumentException("count >= 0 expected");
        }
    }

    public static <T> Observable<T> retry(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, true, false, Schedulers.trampoline()));
    }

    public static <T> Observable<T> retry(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, true, false, scheduler));
    }

    public static <T> Observable<T> repeat(Observable<T> source) {
        return repeat((Observable) source, Schedulers.trampoline());
    }

    public static <T> Observable<T> repeat(Observable<T> source, Scheduler scheduler) {
        return repeat((Observable) source, REDO_INFINITE, scheduler);
    }

    public static <T> Observable<T> repeat(Observable<T> source, long count) {
        return repeat((Observable) source, count, Schedulers.trampoline());
    }

    public static <T> Observable<T> repeat(Observable<T> source, long count, Scheduler scheduler) {
        if (count == 0) {
            return Observable.empty();
        }
        if (count >= 0) {
            return repeat((Observable) source, new RedoFinite(count - 1), scheduler);
        }
        throw new IllegalArgumentException("count >= 0 expected");
    }

    public static <T> Observable<T> repeat(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, false, true, Schedulers.trampoline()));
    }

    public static <T> Observable<T> repeat(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, false, true, scheduler));
    }

    public static <T> Observable<T> redo(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, false, false, scheduler));
    }

    private OnSubscribeRedo(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> f, boolean stopOnComplete, boolean stopOnError, Scheduler scheduler) {
        this.source = source;
        this.controlHandlerFunction = f;
        this.stopOnComplete = stopOnComplete;
        this.stopOnError = stopOnError;
        this.scheduler = scheduler;
    }

    public void call(Subscriber<? super T> child) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        AtomicLong consumerCapacity = new AtomicLong();
        Worker worker = this.scheduler.createWorker();
        child.add(worker);
        SerialSubscription sourceSubscriptions = new SerialSubscription();
        child.add(sourceSubscriptions);
        BehaviorSubject<Notification<?>> terminals = BehaviorSubject.create();
        terminals.subscribe((Subscriber) Subscribers.empty());
        ProducerArbiter arbiter = new ProducerArbiter();
        Action0 subscribeToSource = new AnonymousClass2(child, terminals, arbiter, consumerCapacity, sourceSubscriptions);
        worker.schedule(new AnonymousClass4((Observable) this.controlHandlerFunction.call(terminals.lift(new Operator<Notification<?>, Notification<?>>() {

            /* renamed from: rx.internal.operators.OnSubscribeRedo.3.1 */
            class AnonymousClass1 extends Subscriber<Notification<?>> {
                final /* synthetic */ Subscriber val$filteredTerminals;

                AnonymousClass1(Subscriber x0, Subscriber subscriber) {
                    this.val$filteredTerminals = subscriber;
                    super(x0);
                }

                public void onCompleted() {
                    this.val$filteredTerminals.onCompleted();
                }

                public void onError(Throwable e) {
                    this.val$filteredTerminals.onError(e);
                }

                public void onNext(Notification<?> t) {
                    if (t.isOnCompleted() && OnSubscribeRedo.this.stopOnComplete) {
                        this.val$filteredTerminals.onCompleted();
                    } else if (t.isOnError() && OnSubscribeRedo.this.stopOnError) {
                        this.val$filteredTerminals.onError(t.getThrowable());
                    } else {
                        this.val$filteredTerminals.onNext(t);
                    }
                }

                public void setProducer(Producer producer) {
                    producer.request(Long.MAX_VALUE);
                }
            }

            public Subscriber<? super Notification<?>> call(Subscriber<? super Notification<?>> filteredTerminals) {
                return new AnonymousClass1(filteredTerminals, filteredTerminals);
            }
        })), child, consumerCapacity, worker, subscribeToSource, atomicBoolean));
        child.setProducer(new AnonymousClass5(consumerCapacity, arbiter, atomicBoolean, worker, subscribeToSource));
    }
}
