.class public interface abstract Lcom/novoda/imageloader/core/loader/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# virtual methods
.method public abstract load(Landroid/widget/ImageView;)V
.end method

.method public abstract setLoadListener(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/novoda/imageloader/core/OnImageLoadedListener;",
            ">;)V"
        }
    .end annotation
.end method
