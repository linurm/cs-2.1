.class public Lcom/heyzap/common/concurrency/FutureUtils;
.super Ljava/lang/Object;
.source "FutureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static addTimeout(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/heyzap/common/concurrency/FutureUtils$3;

    invoke-direct {v0, p0}, Lcom/heyzap/common/concurrency/FutureUtils$3;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;)V

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 78
    return-object p0
.end method

.method public static allOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/heyzap/common/concurrency/ListenableFuture;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/ListenableFuture;

    .line 51
    new-instance v4, Lcom/heyzap/common/concurrency/FutureUtils$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/heyzap/common/concurrency/FutureUtils$2;-><init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/heyzap/common/concurrency/SettableFuture;)V

    invoke-interface {v0, v4, p1}, Lcom/heyzap/common/concurrency/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    return-object v1
.end method

.method public static anyOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<TV;>;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 18
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/ListenableFuture;

    .line 21
    new-instance v4, Lcom/heyzap/common/concurrency/FutureUtils$1;

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/heyzap/common/concurrency/FutureUtils$1;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v0, v4, p1}, Lcom/heyzap/common/concurrency/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 34
    :cond_0
    return-object v1
.end method

.method public static bind(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<+TV;>;",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/heyzap/common/concurrency/FutureUtils$5;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/common/concurrency/FutureUtils$5;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/common/concurrency/SettableFuture;)V

    invoke-virtual {p0, v0, p2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 109
    return-void
.end method

.method public static getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 43
    :cond_0
    :goto_0
    return-object p1

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static wrap(Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/heyzap/common/concurrency/FutureUtils$4;

    invoke-direct {v1, p0, v0}, Lcom/heyzap/common/concurrency/FutureUtils$4;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;)V

    invoke-interface {p0, v1, p1}, Lcom/heyzap/common/concurrency/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 95
    return-object v0
.end method

.method public static wrapTimeout(Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/heyzap/common/concurrency/FutureUtils;->wrap(Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/heyzap/common/concurrency/FutureUtils;->addTimeout(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method
