.class Lcom/heyzap/common/concurrency/ExecutorPool$WrappedScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "ExecutorPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/concurrency/ExecutorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedScheduledThreadPoolExecutor"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 53
    :try_start_0
    new-instance v0, Lcom/heyzap/common/concurrency/WrappedRunnable;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/common/concurrency/WrappedRunnable;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v0, "Runnable rejected because executor is shut down"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
