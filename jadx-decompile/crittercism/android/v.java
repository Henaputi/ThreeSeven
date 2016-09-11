package crittercism.android;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.net.URL;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;

public final class v implements URLStreamHandlerFactory {
    private static final Object a;
    private static v b;
    private LinkedList c;
    private boolean d;
    private boolean e;

    public enum a {
        HTTP_ONLY,
        HTTPS_ONLY,
        ALL
    }

    static {
        a = new Object();
    }

    public static v a() {
        return b;
    }

    public v(a aVar, e eVar, d dVar) {
        this.c = new LinkedList();
        this.d = false;
        this.e = false;
        if (aVar == a.ALL || aVar == a.HTTP_ONLY) {
            this.c.add(new o(eVar, dVar));
        }
        if (aVar == a.ALL || aVar == a.HTTPS_ONLY) {
            this.c.add(new q(eVar, dVar));
        }
    }

    public final boolean b() {
        boolean z = true;
        synchronized (a) {
            if (b != null) {
                if (b != this) {
                    z = false;
                }
                return z;
            }
            if (!(this.d || this.e)) {
                try {
                    URL.setURLStreamHandlerFactory(this);
                    this.d = true;
                    b = this;
                } catch (Throwable th) {
                }
            }
            return this.d;
        }
    }

    private synchronized boolean d() {
        boolean z = false;
        synchronized (this) {
            synchronized (a) {
                if (b != this) {
                    boolean z2 = this.d;
                } else {
                    if (this.d && e()) {
                        this.d = false;
                        b = null;
                    }
                    z = this.d;
                }
            }
        }
        return z;
    }

    public final URLStreamHandler createURLStreamHandler(String protocol) {
        try {
            if (!this.e) {
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    m mVar = (m) it.next();
                    if (mVar.a().equals(protocol)) {
                        return mVar;
                    }
                }
            }
            return null;
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            this.e = true;
            dx.a(th);
            return null;
        }
    }

    private static boolean e() {
        Field[] declaredFields = URL.class.getDeclaredFields();
        int length = declaredFields.length;
        int i = 0;
        while (i < length) {
            Field field = declaredFields[i];
            if (URLStreamHandlerFactory.class.isAssignableFrom(field.getType())) {
                try {
                    ea eaVar = ea.STREAM_HANDLER_FACTORY_ANNUL_REFLECTION_FAULT;
                    field.setAccessible(true);
                    field.set(null, null);
                    field.setAccessible(false);
                    URL.setURLStreamHandlerFactory(null);
                    return true;
                } catch (IllegalAccessException e) {
                    dx.c();
                } catch (SecurityException e2) {
                    dx.c();
                } catch (Throwable th) {
                    dx.c();
                }
            } else {
                i++;
            }
        }
        return false;
    }

    private static boolean f() {
        for (Field field : URL.class.getDeclaredFields()) {
            if (Hashtable.class.isAssignableFrom(field.getType())) {
                ParameterizedType parameterizedType = (ParameterizedType) field.getGenericType();
                Class cls = (Class) parameterizedType.getActualTypeArguments()[0];
                Class cls2 = (Class) parameterizedType.getActualTypeArguments()[1];
                if (String.class.isAssignableFrom(cls) && URLStreamHandler.class.isAssignableFrom(cls2)) {
                    try {
                        ea eaVar = ea.STREAM_HANDLER_FACTORY_CLEAR_STREAM_HANDLERS_FAULT;
                        field.setAccessible(true);
                        Hashtable hashtable = (Hashtable) field.get(null);
                        if (hashtable != null) {
                            hashtable.clear();
                        }
                        field.setAccessible(false);
                        return true;
                    } catch (IllegalArgumentException e) {
                        dx.c();
                    } catch (SecurityException e2) {
                        dx.c();
                    } catch (IllegalAccessException e3) {
                        dx.c();
                    }
                }
            }
        }
        return false;
    }

    public final synchronized boolean c() {
        boolean z = false;
        synchronized (this) {
            d();
            boolean f;
            if (this.d) {
                this.e = true;
                f = f();
            } else {
                f = false;
            }
            if (!this.d || r2) {
                z = true;
            }
        }
        return z;
    }
}
