.class public Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
.super Ljava/lang/Object;
.source "ConcurrentLoaderStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;,
        Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;
    }
.end annotation


# instance fields
.field private final adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

.field private config:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;

.field private currentLoad:D

.field private final fetchRequestConsumer:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

.field private final fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/FetchRequestStore;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->currentLoad:D

    .line 33
    iput-object p1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    .line 34
    iput-object p2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    iput-object p3, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 36
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    invoke-direct {v0, p3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;-><init>(Lcom/heyzap/mediation/FetchRequestStore;)V

    iput-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->fetchRequestConsumer:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->startNextAdapter()V

    return-void
.end method

.method static synthetic access$126(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;D)D
    .locals 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->currentLoad:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->currentLoad:D

    return-wide v0
.end method

.method private findNextNetworkConfig()Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;
    .locals 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->config:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;

    iget-object v0, v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->networkConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;

    .line 91
    const/4 v1, 0x0

    .line 92
    iget-object v2, v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/internal/Constants$AdUnit;

    .line 93
    iget-object v5, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-virtual {v5, v1}, Lcom/heyzap/mediation/FetchRequestStore;->getCount(Lcom/heyzap/internal/Constants$AdUnit;)I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0

    .line 96
    :cond_1
    if-lez v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v2, v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adapterName:Ljava/lang/String;

    iget-object v4, v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v1, v2, v4}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;Ljava/util/EnumSet;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    .line 105
    iput-object v1, v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 107
    iget-object v2, v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getAdUnitsForCreativeType(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isStarted(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startAdapter(Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;)V
    .locals 6

    .prologue
    .line 65
    iget-object v0, p1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v1, p1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v2, p1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getAdUnitsForCreativeType(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 66
    iget-wide v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->currentLoad:D

    iget-wide v4, p1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->currentLoad:D

    .line 68
    iget-object v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget v2, p1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/heyzap/common/concurrency/FutureUtils;->wrapTimeout(Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;-><init>(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;)V

    iget-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, v2}, Lcom/heyzap/common/concurrency/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 87
    return-void
.end method

.method private startNextAdapter()V
    .locals 4

    .prologue
    .line 55
    :goto_0
    iget-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->currentLoad:D

    iget-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->config:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;

    iget-wide v2, v2, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->maxLoad:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 62
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->findNextNetworkConfig()Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->startAdapter(Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;)V

    goto :goto_0
.end method


# virtual methods
.method public configure(Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->config:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;

    .line 41
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    new-instance v1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$1;

    invoke-direct {v1, p0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$1;-><init>(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;)V

    iget-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/FetchRequestStore;->addUpdateCallback(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 50
    invoke-direct {p0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->startNextAdapter()V

    .line 51
    return-void
.end method
