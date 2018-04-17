.class public final Lcom/heyzap/common/concurrency/ExecutionList;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private executed:Z

.field private final runnables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/heyzap/common/concurrency/ExecutionList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/heyzap/common/concurrency/ExecutionList;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/concurrency/ExecutionList;->runnables:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/common/concurrency/ExecutionList;->executed:Z

    .line 60
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/heyzap/common/concurrency/ExecutionList;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    .line 83
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/heyzap/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/heyzap/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/heyzap/common/concurrency/ExecutionList;->runnables:Ljava/util/Queue;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-boolean v2, p0, Lcom/heyzap/common/concurrency/ExecutionList;->executed:Z

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/heyzap/common/concurrency/ExecutionList;->runnables:Ljava/util/Queue;

    new-instance v3, Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;

    invoke-direct {v3, p1, p2}, Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;

    invoke-direct {v0, p1, p2}, Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;->execute()V

    .line 106
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/heyzap/common/concurrency/ExecutionList;->runnables:Ljava/util/Queue;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/heyzap/common/concurrency/ExecutionList;->executed:Z

    if-eqz v0, :cond_1

    .line 137
    monitor-exit v1

    .line 147
    :cond_0
    return-void

    .line 139
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/common/concurrency/ExecutionList;->executed:Z

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/heyzap/common/concurrency/ExecutionList;->runnables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/heyzap/common/concurrency/ExecutionList;->runnables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/ExecutionList$RunnableExecutorPair;->execute()V

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/heyzap/common/concurrency/ExecutionList;->execute()V

    .line 118
    return-void
.end method
