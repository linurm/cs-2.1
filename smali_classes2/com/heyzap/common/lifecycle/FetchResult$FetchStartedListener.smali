.class public interface abstract Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;
.super Ljava/lang/Object;
.source "FetchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/lifecycle/FetchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetchStartedListener"
.end annotation


# virtual methods
.method public abstract onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;)V"
        }
    .end annotation
.end method
