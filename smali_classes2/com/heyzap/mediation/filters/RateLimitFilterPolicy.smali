.class Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;
.super Ljava/lang/Object;
.source "RateLimitFilterPolicy.java"

# interfaces
.implements Lcom/heyzap/mediation/filters/FilterPolicy;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final period:J

.field private final permits:I

.field private final persistence:Lcom/heyzap/mediation/filters/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/filters/Store",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final useHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;IILjava/util/concurrent/TimeUnit;Lcom/heyzap/mediation/filters/Store;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "II",
            "Ljava/util/concurrent/TimeUnit;",
            "Lcom/heyzap/mediation/filters/Store",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    .line 25
    iput p2, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->permits:I

    .line 26
    int-to-long v0, p3

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->period:J

    .line 27
    iput-object p5, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->persistence:Lcom/heyzap/mediation/filters/Store;

    .line 28
    iput-object p1, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 29
    invoke-direct {p0}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->boot()V

    .line 30
    return-void
.end method

.method private boot()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->persistence:Lcom/heyzap/mediation/filters/Store;

    invoke-interface {v0}, Lcom/heyzap/mediation/filters/Store;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 82
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_0

    .line 82
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v5

    .line 89
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Non-number found in rate-limiter persistence: "

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->persistence:Lcom/heyzap/mediation/filters/Store;

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method

.method private persist()V
    .locals 4

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 101
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->persistence:Lcom/heyzap/mediation/filters/Store;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/mediation/filters/Store;->set(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private prune(J)V
    .locals 9

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->period:J

    sub-long v2, p1, v0

    .line 70
    iget-object v1, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 72
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_0

    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    return-void
.end method


# virtual methods
.method public accept()Z
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->accept(J)Z

    move-result v0

    return v0
.end method

.method public accept(J)Z
    .locals 5

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    monitor-enter v1

    .line 40
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->prune(J)V

    .line 41
    iget-object v2, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->permits:I

    if-ge v2, v3, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :cond_0
    monitor-exit v1

    .line 46
    return v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addDisplay(J)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->useHistory:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->persist()V

    .line 65
    return-void
.end method

.method public addDisplay(Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;-><init>(Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    iget-object v2, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 60
    return-void
.end method
