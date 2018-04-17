.class public Lcom/heyzap/mediation/display/WaterfallMediator;
.super Ljava/lang/Object;
.source "WaterfallMediator.java"

# interfaces
.implements Lcom/heyzap/mediation/display/Mediator;


# instance fields
.field private final adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

.field private final displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

.field private final filterManager:Lcom/heyzap/mediation/filters/FilterManager;

.field private final interstitialVideoTracker:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/filters/FilterManager;Lcom/heyzap/mediation/filters/InterstitialVideoTracker;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    .line 37
    iput-object p2, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    .line 38
    iput-object p3, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    iput-object p4, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    .line 40
    iput-object p5, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->interstitialVideoTracker:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/display/WaterfallMediator;)Lcom/heyzap/mediation/adapter/AdapterPool;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/display/WaterfallMediator;)Lcom/heyzap/mediation/filters/InterstitialVideoTracker;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->interstitialVideoTracker:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/heyzap/mediation/display/WaterfallMediator;->reapPending(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/mediation/display/WaterfallMediator;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private reapPending(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/display/DisplayConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;",
            ">;)",
            "Lcom/heyzap/mediation/MediationResult;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 188
    new-instance v10, Lcom/heyzap/mediation/MediationResult;

    invoke-direct {v10}, Lcom/heyzap/mediation/MediationResult;-><init>()V

    .line 189
    iget-object v0, p1, Lcom/heyzap/mediation/display/DisplayConfig;->id:Ljava/lang/String;

    iput-object v0, v10, Lcom/heyzap/mediation/MediationResult;->id:Ljava/lang/String;

    .line 191
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v9

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    .line 193
    iget-boolean v0, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->rejected:Z

    if-eqz v0, :cond_1

    .line 194
    new-instance v6, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->SKIPPED:Lcom/heyzap/internal/Constants$FetchFailureReason;

    iget-object v1, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->rejectionCause:Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    .line 205
    :goto_1
    new-instance v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v1, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v1, v1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v2, v2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    iget-object v3, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v4, :cond_3

    move v4, v9

    :goto_2
    iget-object v5, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v5, v5, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v8, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v8, v8, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/MediationResult$NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/common/lifecycle/FetchResult;ILjava/util/Collection;)V

    .line 210
    iget-object v1, v10, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-boolean v1, v6, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-eqz v1, :cond_4

    .line 213
    iput-object v0, v10, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    .line 220
    :cond_0
    return-object v10

    .line 195
    :cond_1
    iget-object v0, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    new-instance v6, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->TIMEOUT:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v1, "Display timed out"

    invoke-direct {v6, v0, v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_2
    :try_start_0
    iget-object v0, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 202
    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    new-instance v6, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v1, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v4

    goto :goto_2

    .line 217
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 218
    goto :goto_0
.end method


# virtual methods
.method public mediate(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/concurrency/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/request/MediationRequest;",
            ")",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<",
            "Lcom/heyzap/mediation/MediationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    invoke-interface {v1}, Lcom/heyzap/mediation/display/DisplayConfigLoader;->consume()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRemainingTtl()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/heyzap/common/concurrency/FutureUtils;->addTimeout(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    .line 50
    new-instance v2, Lcom/heyzap/mediation/display/WaterfallMediator$1;

    invoke-direct {v2, p0, v1}, Lcom/heyzap/mediation/display/WaterfallMediator$1;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 58
    new-instance v2, Lcom/heyzap/mediation/display/WaterfallMediator$2;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/heyzap/mediation/display/WaterfallMediator$2;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/request/MediationRequest;)V

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 184
    return-object v0
.end method
