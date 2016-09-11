package rx.subjects;

import java.util.concurrent.TimeUnit;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Scheduler.Worker;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.internal.operators.NotificationLite;
import rx.schedulers.TestScheduler;

public final class TestSubject<T> extends Subject<T, T> {
    private final Worker innerScheduler;
    private final SubjectSubscriptionManager<T> state;

    /* renamed from: rx.subjects.TestSubject.1 */
    static class AnonymousClass1 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ SubjectSubscriptionManager val$state;

        AnonymousClass1(SubjectSubscriptionManager subjectSubscriptionManager) {
            this.val$state = subjectSubscriptionManager;
        }

        public void call(SubjectObserver<T> o) {
            o.emitFirst(this.val$state.getLatest(), this.val$state.nl);
        }
    }

    /* renamed from: rx.subjects.TestSubject.3 */
    class AnonymousClass3 implements Action0 {
        final /* synthetic */ Throwable val$e;

        AnonymousClass3(Throwable th) {
            this.val$e = th;
        }

        public void call() {
            TestSubject.this._onError(this.val$e);
        }
    }

    /* renamed from: rx.subjects.TestSubject.4 */
    class AnonymousClass4 implements Action0 {
        final /* synthetic */ Object val$v;

        AnonymousClass4(Object obj) {
            this.val$v = obj;
        }

        public void call() {
            TestSubject.this._onNext(this.val$v);
        }
    }

    public static <T> TestSubject<T> create(TestScheduler scheduler) {
        SubjectSubscriptionManager<T> state = new SubjectSubscriptionManager();
        state.onAdded = new AnonymousClass1(state);
        state.onTerminated = state.onAdded;
        return new TestSubject(state, state, scheduler);
    }

    protected TestSubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> state, TestScheduler scheduler) {
        super(onSubscribe);
        this.state = state;
        this.innerScheduler = scheduler.createWorker();
    }

    public void onCompleted() {
        onCompleted(0);
    }

    void _onCompleted() {
        if (this.state.active) {
            for (SubjectObserver<T> bo : this.state.terminate(NotificationLite.instance().completed())) {
                bo.onCompleted();
            }
        }
    }

    public void onCompleted(long delayTime) {
        this.innerScheduler.schedule(new Action0() {
            public void call() {
                TestSubject.this._onCompleted();
            }
        }, delayTime, TimeUnit.MILLISECONDS);
    }

    public void onError(Throwable e) {
        onError(e, 0);
    }

    void _onError(Throwable e) {
        if (this.state.active) {
            for (SubjectObserver<T> bo : this.state.terminate(NotificationLite.instance().error(e))) {
                bo.onError(e);
            }
        }
    }

    public void onError(Throwable e, long delayTime) {
        this.innerScheduler.schedule(new AnonymousClass3(e), delayTime, TimeUnit.MILLISECONDS);
    }

    public void onNext(T v) {
        onNext(v, 0);
    }

    void _onNext(T v) {
        for (Observer<? super T> o : this.state.observers()) {
            o.onNext(v);
        }
    }

    public void onNext(T v, long delayTime) {
        this.innerScheduler.schedule(new AnonymousClass4(v), delayTime, TimeUnit.MILLISECONDS);
    }

    public boolean hasObservers() {
        return this.state.observers().length > 0;
    }
}
