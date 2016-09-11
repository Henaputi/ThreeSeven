package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;

public final class OperatorDebounceWithSelector<T, U> implements Operator<T, T> {
    final Func1<? super T, ? extends Observable<U>> selector;

    /* renamed from: rx.internal.operators.OperatorDebounceWithSelector.1 */
    class AnonymousClass1 extends Subscriber<T> {
        final Subscriber<?> self;
        final DebounceState<T> state;
        final /* synthetic */ SerializedSubscriber val$s;
        final /* synthetic */ SerialSubscription val$ssub;

        /* renamed from: rx.internal.operators.OperatorDebounceWithSelector.1.1 */
        class AnonymousClass1 extends Subscriber<U> {
            final /* synthetic */ int val$index;

            AnonymousClass1(int i) {
                this.val$index = i;
            }

            public void onNext(U u) {
                onCompleted();
            }

            public void onError(Throwable e) {
                AnonymousClass1.this.self.onError(e);
            }

            public void onCompleted() {
                AnonymousClass1.this.state.emit(this.val$index, AnonymousClass1.this.val$s, AnonymousClass1.this.self);
                unsubscribe();
            }
        }

        AnonymousClass1(Subscriber x0, SerializedSubscriber serializedSubscriber, SerialSubscription serialSubscription) {
            this.val$s = serializedSubscriber;
            this.val$ssub = serialSubscription;
            super(x0);
            this.state = new DebounceState();
            this.self = this;
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }

        public void onNext(T t) {
            try {
                Observable<U> debouncer = (Observable) OperatorDebounceWithSelector.this.selector.call(t);
                Subscriber<U> debounceSubscriber = new AnonymousClass1(this.state.next(t));
                this.val$ssub.set(debounceSubscriber);
                debouncer.unsafeSubscribe(debounceSubscriber);
            } catch (Throwable e) {
                Exceptions.throwOrReport(e, (Observer) this);
            }
        }

        public void onError(Throwable e) {
            this.val$s.onError(e);
            unsubscribe();
            this.state.clear();
        }

        public void onCompleted() {
            this.state.emitAndComplete(this.val$s, this);
        }
    }

    public OperatorDebounceWithSelector(Func1<? super T, ? extends Observable<U>> selector) {
        this.selector = selector;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        SerializedSubscriber<T> s = new SerializedSubscriber(child);
        SerialSubscription ssub = new SerialSubscription();
        child.add(ssub);
        return new AnonymousClass1(child, s, ssub);
    }
}
