.class public Lcom/heyzap/common/concurrency/ExecutorPool;
.super Ljava/lang/Object;
.source "ExecutorPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/concurrency/ExecutorPool$WrappedScheduledThreadPoolExecutor;,
        Lcom/heyzap/common/concurrency/ExecutorPool$ExecutorThreadFactory;
    }
.end annotation


# static fields
.field private static volatile ref:Lcom/heyzap/common/concurrency/ExecutorPool;


# instance fields
.field pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/heyzap/common/concurrency/ExecutorPool$WrappedScheduledThreadPoolExecutor;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/heyzap/common/concurrency/ExecutorPool$WrappedScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/heyzap/common/concurrency/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 17
    iget-object v0, p0, Lcom/heyzap/common/concurrency/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 18
    iget-object v0, p0, Lcom/heyzap/common/concurrency/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 19
    iget-object v0, p0, Lcom/heyzap/common/concurrency/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/heyzap/common/concurrency/ExecutorPool$ExecutorThreadFactory;

    invoke-direct {v1, p0}, Lcom/heyzap/common/concurrency/ExecutorPool$ExecutorThreadFactory;-><init>(Lcom/heyzap/common/concurrency/ExecutorPool;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/heyzap/common/concurrency/ExecutorPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/heyzap/common/concurrency/ExecutorPool;->ref:Lcom/heyzap/common/concurrency/ExecutorPool;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/heyzap/common/concurrency/ExecutorPool;

    invoke-direct {v0}, Lcom/heyzap/common/concurrency/ExecutorPool;-><init>()V

    sput-object v0, Lcom/heyzap/common/concurrency/ExecutorPool;->ref:Lcom/heyzap/common/concurrency/ExecutorPool;

    .line 28
    :cond_0
    sget-object v0, Lcom/heyzap/common/concurrency/ExecutorPool;->ref:Lcom/heyzap/common/concurrency/ExecutorPool;

    iget-object v0, v0, Lcom/heyzap/common/concurrency/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
