.class public Lcom/heyzap/common/lifecycle/EventStream;
.super Ljava/lang/Object;
.source "EventStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/lifecycle/EventStream$EventListener;,
        Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final eventListenerExecutorPairs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<TV;>.Event",
            "ListenerExecutorPair",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private eventsCount:I

.field private firstEventFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field private lastEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventListenerExecutorPairs:Ljava/util/Queue;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventsCount:I

    .line 12
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->firstEventFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->lastEvent:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/common/lifecycle/EventStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->lastEvent:Ljava/lang/Object;

    return-object v0
.end method

.method public static bind(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<TV;>;",
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/heyzap/common/lifecycle/EventStream$3;

    invoke-direct {v0, p1}, Lcom/heyzap/common/lifecycle/EventStream$3;-><init>(Lcom/heyzap/common/lifecycle/EventStream;)V

    invoke-virtual {p0, v0, p2}, Lcom/heyzap/common/lifecycle/EventStream;->addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V

    .line 65
    return-void
.end method

.method public static create()Lcom/heyzap/common/lifecycle/EventStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/heyzap/common/lifecycle/EventStream;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/EventStream;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/common/lifecycle/EventStream$EventListener",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventListenerExecutorPairs:Ljava/util/Queue;

    new-instance v1, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;

    invoke-direct {v1, p0, p1, p2}, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;-><init>(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 42
    iget v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventsCount:I

    if-lez v0, :cond_0

    .line 43
    new-instance v0, Lcom/heyzap/common/lifecycle/EventStream$2;

    invoke-direct {v0, p0, p1}, Lcom/heyzap/common/lifecycle/EventStream$2;-><init>(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream$EventListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventsCount()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventsCount:I

    return v0
.end method

.method public getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->firstEventFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public declared-synchronized sendEvent(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventsCount:I

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->firstEventFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/heyzap/common/lifecycle/EventStream;->lastEvent:Ljava/lang/Object;

    .line 25
    iget v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventsCount:I

    .line 27
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream;->eventListenerExecutorPairs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;

    .line 28
    invoke-static {v0}, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;->access$100(Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/heyzap/common/lifecycle/EventStream$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/heyzap/common/lifecycle/EventStream$1;-><init>(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 37
    :cond_1
    monitor-exit p0

    return-void
.end method
