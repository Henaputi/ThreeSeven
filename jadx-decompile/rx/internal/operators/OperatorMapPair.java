package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.functions.Func2;

public final class OperatorMapPair<T, U, R> implements Operator<Observable<? extends R>, T> {
    final Func1<? super T, ? extends Observable<? extends U>> collectionSelector;
    final Func2<? super T, ? super U, ? extends R> resultSelector;

    /* renamed from: rx.internal.operators.OperatorMapPair.1 */
    static class AnonymousClass1 implements Func1<T, Observable<U>> {
        final /* synthetic */ Func1 val$selector;

        AnonymousClass1(Func1 func1) {
            this.val$selector = func1;
        }

        public Observable<U> call(T t1) {
            return Observable.from((Iterable) this.val$selector.call(t1));
        }
    }

    /* renamed from: rx.internal.operators.OperatorMapPair.2 */
    class AnonymousClass2 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$o;

        /* renamed from: rx.internal.operators.OperatorMapPair.2.1 */
        class AnonymousClass1 implements Func1<U, R> {
            final /* synthetic */ Object val$outer;

            AnonymousClass1(Object obj) {
                this.val$outer = obj;
            }

            public R call(U inner) {
                return OperatorMapPair.this.resultSelector.call(this.val$outer, inner);
            }
        }

        AnonymousClass2(Subscriber x0, Subscriber subscriber) {
            this.val$o = subscriber;
            super(x0);
        }

        public void onCompleted() {
            this.val$o.onCompleted();
        }

        public void onError(Throwable e) {
            this.val$o.onError(e);
        }

        public void onNext(T outer) {
            try {
                this.val$o.onNext(((Observable) OperatorMapPair.this.collectionSelector.call(outer)).map(new AnonymousClass1(outer)));
            } catch (Throwable e) {
                Exceptions.throwOrReport(e, this.val$o, outer);
            }
        }
    }

    public static <T, U> Func1<T, Observable<U>> convertSelector(Func1<? super T, ? extends Iterable<? extends U>> selector) {
        return new AnonymousClass1(selector);
    }

    public OperatorMapPair(Func1<? super T, ? extends Observable<? extends U>> collectionSelector, Func2<? super T, ? super U, ? extends R> resultSelector) {
        this.collectionSelector = collectionSelector;
        this.resultSelector = resultSelector;
    }

    public Subscriber<? super T> call(Subscriber<? super Observable<? extends R>> o) {
        return new AnonymousClass2(o, o);
    }
}
