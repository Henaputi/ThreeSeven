package crittercism.android;

import android.content.Context;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

public final class bs {
    public final File a;
    public String b;
    public List c;
    private cj d;
    private int e;
    private int f;
    private int g;
    private a h;
    private boolean i;

    public static class a {
        int a;

        public a(int i) {
            this.a = i;
        }
    }

    public bs(Context context, br brVar) {
        this(new File(context.getFilesDir().getAbsolutePath() + "//com.crittercism//" + brVar.a()), brVar.c(), brVar.d(), brVar.e(), brVar.b(), brVar.f());
    }

    private bs(File file, a aVar, cj cjVar, int i, int i2, String str) {
        this.i = false;
        this.h = aVar;
        this.d = cjVar;
        this.g = i;
        this.f = i2;
        this.b = str;
        this.a = file;
        file.mkdirs();
        d();
        this.e = h().length;
        this.c = new LinkedList();
    }

    public final bs a(Context context) {
        return new bs(new File(context.getFilesDir().getAbsolutePath() + "//com.crittercism/pending/" + (this.a.getName() + "_" + UUID.randomUUID().toString())), this.h, this.d, this.g, this.f, this.b);
    }

    private boolean d() {
        if (!this.a.isDirectory()) {
            this.i = true;
            String absolutePath = this.a.getAbsolutePath();
            if (this.a.exists()) {
                IOException iOException = new IOException(absolutePath + " is not a directory");
            } else {
                FileNotFoundException fileNotFoundException = new FileNotFoundException(absolutePath + " does not exist");
            }
        }
        if (this.i) {
            return false;
        }
        return true;
    }

    public final synchronized boolean a(ch chVar) {
        boolean z = false;
        synchronized (this) {
            if (d()) {
                if (this.e >= this.g) {
                    dx.b();
                } else {
                    int b = b();
                    if (b != i() || f()) {
                        if (b > i()) {
                            this.i = true;
                        } else {
                            boolean c = c(chVar);
                            if (c) {
                                this.e++;
                            }
                            synchronized (this.c) {
                                for (bt c2 : this.c) {
                                    c2.c();
                                }
                            }
                            z = c;
                        }
                    }
                }
            }
        }
        return z;
    }

    public final synchronized boolean b(ch chVar) {
        boolean c;
        if (d()) {
            new File(this.a, chVar.e()).delete();
            c = c(chVar);
        } else {
            c = false;
        }
        return c;
    }

    private boolean c(ch chVar) {
        File file = new File(this.a, chVar.e());
        OutputStream outputStream = null;
        try {
            outputStream = new BufferedOutputStream(new FileOutputStream(file));
        } catch (FileNotFoundException e) {
            new StringBuilder("Could not open output stream to : ").append(file);
            dx.a();
        }
        try {
            chVar.a(outputStream);
            return true;
        } catch (Throwable e2) {
            file.delete();
            dx.a("Unable to write to " + file.getAbsolutePath(), e2);
            return false;
        } finally {
            try {
                outputStream.close();
            } catch (Throwable e22) {
                file.delete();
                dx.a("Unable to close " + file.getAbsolutePath(), e22);
                return false;
            }
        }
    }

    private void e() {
        while (b() > i()) {
            if (!f()) {
                return;
            }
        }
    }

    private boolean f() {
        a aVar = this.h;
        if (this.h == null) {
            return false;
        }
        a aVar2 = this.h;
        File[] g = g();
        File file = null;
        if (g.length > aVar2.a) {
            file = g[aVar2.a];
        }
        if (file == null || !file.delete()) {
            return false;
        }
        return true;
    }

    public final synchronized void a() {
        if (d()) {
            File[] h = h();
            for (File delete : h) {
                delete.delete();
            }
        }
    }

    private File[] g() {
        File[] h = h();
        Arrays.sort(h);
        return h;
    }

    private File[] h() {
        File[] listFiles = this.a.listFiles();
        if (listFiles == null) {
            return new File[0];
        }
        return listFiles;
    }

    public final synchronized int b() {
        return h().length;
    }

    private synchronized int i() {
        return this.f;
    }

    public final synchronized void a(String str) {
        if (d() && str != null) {
            File file = new File(this.a.getAbsolutePath(), str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public final void a(bs bsVar) {
        if (bsVar != null) {
            int compareTo = this.a.getName().compareTo(bsVar.a.getName());
            if (compareTo != 0) {
                bs bsVar2;
                bs bsVar3;
                if (compareTo < 0) {
                    bsVar2 = bsVar;
                    bsVar3 = this;
                } else {
                    bsVar2 = this;
                    bsVar3 = bsVar;
                }
                synchronized (r2) {
                    synchronized (r1) {
                        if (d() && bsVar.d()) {
                            File[] g = g();
                            for (compareTo = 0; compareTo < g.length; compareTo++) {
                                g[compareTo].renameTo(new File(bsVar.a, g[compareTo].getName()));
                            }
                            bsVar.e();
                            for (bt d : this.c) {
                                d.d();
                            }
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    public final synchronized List c() {
        List arrayList;
        arrayList = new ArrayList();
        if (d()) {
            cj cjVar = this.d;
            File[] g = g();
            for (File a : g) {
                arrayList.add(this.d.a(a));
            }
        }
        return arrayList;
    }
}
