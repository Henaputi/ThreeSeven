package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Completable;
import rx.Completable.CompletableOnSubscribe;
import rx.Completable.CompletableSubscriber;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.plugins.RxJavaPlugins;
import rx.subscriptions.CompositeSubscription;

public final class CompletableOnSubscribeTimeout implements CompletableOnSubscribe {
    final Completable other;
    final Scheduler scheduler;
    final Completable source;
    final long timeout;
    final TimeUnit unit;

    /* renamed from: rx.internal.operators.CompletableOnSubscribeTimeout.1 */
    class AnonymousClass1 implements Action0 {
        final /* synthetic */ AtomicBoolean val$once;
        final /* synthetic */ CompletableSubscriber val$s;
        final /* synthetic */ CompositeSubscription val$set;

        AnonymousClass1(AtomicBoolean atomicBoolean, CompositeSubscription compositeSubscription, CompletableSubscriber completableSubscriber) {
            this.val$once = atomicBoolean;
            this.val$set = compositeSubscription;
            this.val$s = completableSubscriber;
        }

        public void call() {
            if (this.val$once.compareAndSet(false, true)) {
                this.val$set.clear();
                if (CompletableOnSubscribeTimeout.this.other == null) {
                    this.val$s.onError(new TimeoutException());
                } else {
                    CompletableOnSubscribeTimeout.this.other.subscribe(new CompletableSubscriber() {
                        public void onSubscribe(Subscription d) {
                            AnonymousClass1.this.val$set.add(d);
                        }

                        public void onError(Throwable e) {
                            AnonymousClass1.this.val$set.unsubscribe();
                            AnonymousClass1.this.val$s.onError(e);
                        }

                        public void onCompleted() {
                            AnonymousClass1.this.val$set.unsubscribe();
                            AnonymousClass1.this.val$s.onCompleted();
                        }
                    });
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.CompletableOnSubscribeTimeout.2 */
    class AnonymousClass2 implements CompletableSubscriber {
        final /* synthetic */ AtomicBoolean val$once;
        final /* synthetic */ CompletableSubscriber val$s;
        final /* synthetic */ CompositeSubscription val$set;

        AnonymousClass2(CompositeSubscription compositeSubscription, AtomicBoolean atomicBoolean, CompletableSubscriber completableSubscriber) {
            this.val$set = compositeSubscription;
            this.val$once = atomicBoolean;
            this.val$s = completableSubscriber;
        }

        public void onSubscribe(Subscription d) {
            this.val$set.add(d);
        }

        public void onError(Throwable e) {
            if (this.val$once.compareAndSet(false, true)) {
                this.val$set.unsubscribe();
                this.val$s.onError(e);
                return;
            }
            RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
        }

        public void onCompleted() {
            if (this.val$once.compareAndSet(false, true)) {
                this.val$set.unsubscribe();
                this.val$s.onCompleted();
            }
        }
    }

    public CompletableOnSubscribeTimeout(Completable source, long timeout, TimeUnit unit, Scheduler scheduler, Completable other) {
        this.source = source;
        this.timeout = timeout;
        this.unit = unit;
        this.scheduler = scheduler;
        this.other = other;
    }

    public void call(CompletableSubscriber s) {
        CompositeSubscription set = new CompositeSubscription();
        s.onSubscribe(set);
        AtomicBoolean once = new AtomicBoolean();
        Worker w = this.scheduler.createWorker();
        set.add(w);
        w.schedule(new AnonymousClass1(once, set, s), this.timeout, this.unit);
        this.source.subscribe(new AnonymousClass2(set, once, s));
    }
}
