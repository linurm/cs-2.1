.class public Lcom/heyzap/common/concurrency/WrappedRunnable;
.super Ljava/lang/Object;
.source "WrappedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final inner:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/heyzap/common/concurrency/WrappedRunnable;->inner:Ljava/lang/Runnable;

    .line 20
    iput-object p2, p0, Lcom/heyzap/common/concurrency/WrappedRunnable;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/common/concurrency/WrappedRunnable;->inner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "Heyzap has encountered an error and is shutting down."

    invoke-static {v0, v1}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/heyzap/common/concurrency/WrappedRunnable;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 31
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->shutdown()V

    .line 33
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isDebug(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
