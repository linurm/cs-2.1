.class public Lcom/heyzap/mediation/MediationManager;
.super Ljava/lang/Object;
.source "MediationManager.java"


# static fields
.field public static networkCallbackListenerProxy:Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;

.field private static volatile ref:Lcom/heyzap/mediation/MediationManager;


# instance fields
.field private final adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private final configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private fetchMode:Lcom/heyzap/internal/Constants$MediationFetchMode;

.field private final fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private final mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;

.field private statusListenerMultiplexers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;",
            ">;"
        }
    .end annotation
.end field

.field private timeTillAds:Ljava/util/Date;

.field private final uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;

    invoke-direct {v0}, Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;-><init>()V

    sput-object v0, Lcom/heyzap/mediation/MediationManager;->networkCallbackListenerProxy:Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->timeTillAds:Ljava/util/Date;

    .line 55
    sget-object v0, Lcom/heyzap/internal/Constants$MediationFetchMode;->HEYZAP:Lcom/heyzap/internal/Constants$MediationFetchMode;

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchMode:Lcom/heyzap/internal/Constants$MediationFetchMode;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    .line 81
    new-instance v0, Lcom/heyzap/internal/ContextReference;

    invoke-direct {v0}, Lcom/heyzap/internal/ContextReference;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 82
    new-instance v0, Lcom/heyzap/mediation/handler/MediationEventReporter;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/heyzap/mediation/handler/MediationEventReporter;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;

    .line 83
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 84
    new-instance v0, Lcom/heyzap/mediation/FetchRequestStore;

    invoke-direct {v0}, Lcom/heyzap/mediation/FetchRequestStore;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 85
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 86
    new-instance v0, Lcom/heyzap/common/concurrency/HandlerExecutorService;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/heyzap/common/concurrency/HandlerExecutorService;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 87
    new-instance v0, Lcom/heyzap/mediation/config/MediationConfigLoader;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lcom/heyzap/mediation/MediationManager;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    iget-object v5, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    sget-object v6, Lcom/heyzap/mediation/MediationManager;->networkCallbackListenerProxy:Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;

    invoke-direct/range {v0 .. v6}, Lcom/heyzap/mediation/config/MediationConfigLoader;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    .line 88
    invoke-direct {p0}, Lcom/heyzap/mediation/MediationManager;->initStatusListenerMultiplexers()V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/config/MediationConfigLoader;Lcom/heyzap/mediation/handler/MediationEventReporter;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/heyzap/mediation/FetchRequestStore;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->timeTillAds:Ljava/util/Date;

    .line 55
    sget-object v0, Lcom/heyzap/internal/Constants$MediationFetchMode;->HEYZAP:Lcom/heyzap/internal/Constants$MediationFetchMode;

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchMode:Lcom/heyzap/internal/Constants$MediationFetchMode;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    .line 70
    iput-object p1, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 71
    iput-object p2, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    .line 72
    iput-object p3, p0, Lcom/heyzap/mediation/MediationManager;->mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;

    .line 73
    iput-object p4, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 74
    iput-object p5, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 75
    iput-object p6, p0, Lcom/heyzap/mediation/MediationManager;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object p7, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 77
    invoke-direct {p0}, Lcom/heyzap/mediation/MediationManager;->initStatusListenerMultiplexers()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/config/MediationConfigLoader;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/handler/MediationEventReporter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/mediation/MediationManager;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/mediation/MediationManager;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->timeTillAds:Ljava/util/Date;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/heyzap/mediation/MediationManager;
    .locals 2

    .prologue
    .line 255
    const-class v1, Lcom/heyzap/mediation/MediationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/heyzap/mediation/MediationManager;->ref:Lcom/heyzap/mediation/MediationManager;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/heyzap/mediation/MediationManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/MediationManager;-><init>()V

    sput-object v0, Lcom/heyzap/mediation/MediationManager;->ref:Lcom/heyzap/mediation/MediationManager;

    .line 259
    :cond_0
    sget-object v0, Lcom/heyzap/mediation/MediationManager;->ref:Lcom/heyzap/mediation/MediationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initStatusListenerMultiplexers()V
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 93
    new-instance v4, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v5, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v4, v5}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 94
    sget-object v5, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v3, v5}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v3, v5}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->setUsesAudio(Z)V

    .line 97
    :cond_1
    iget-object v5, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method


# virtual methods
.method public adsTimedOut()Z
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager;->timeTillAds:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public display(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/mediation/request/MediationRequest;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/ContextReference;->updateContext(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1, v0}, Lcom/heyzap/mediation/request/MediationRequest;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    new-instance v1, Lcom/heyzap/mediation/MediationManager$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/MediationManager$2;-><init>(Lcom/heyzap/mediation/MediationManager;Lcom/heyzap/mediation/request/MediationRequest;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->get(Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V

    .line 171
    return-object p1
.end method

.method public fetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/FetchRequestStore;->makeUnlimited(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-virtual {v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getFuture()Lcom/heyzap/common/concurrency/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->addFetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Lcom/heyzap/common/concurrency/ListenableFuture;)V

    .line 247
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/FetchRequestStore;->add(Lcom/heyzap/internal/Constants$AdUnit;)V

    goto :goto_0
.end method

.method public getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    return-object v0
.end method

.method public getContextRef()Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method public isAvailable(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getFuture()Lcom/heyzap/common/concurrency/ListenableFuture;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lcom/heyzap/common/concurrency/ListenableFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 199
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/heyzap/common/concurrency/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/config/MediationConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getDisplayConfigLoader()Lcom/heyzap/mediation/display/DisplayConfigLoader;

    move-result-object v1

    invoke-interface {v1}, Lcom/heyzap/mediation/display/DisplayConfigLoader;->peek()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    :try_start_1
    invoke-virtual {v1}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/mediation/display/DisplayConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    new-instance v4, Lcom/heyzap/mediation/filters/FilterContext;

    invoke-direct {v4, p1, p2}, Lcom/heyzap/mediation/filters/FilterContext;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/heyzap/mediation/filters/FilterManager;->accept(Lcom/heyzap/mediation/filters/FilterContext;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    iget-boolean v4, v1, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoEnabled:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getInterstitialVideoTracker()Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    move-result-object v4

    iget v1, v1, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoInterval:I

    invoke-virtual {v4, v1}, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->interstitialCooldownExpired(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 225
    :goto_1
    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getAdapterPool()Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 227
    if-nez v1, :cond_3

    sget-object v5, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p1, v5}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v5

    if-nez v5, :cond_2

    .line 231
    :cond_3
    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isReady(Lcom/heyzap/internal/Constants$AdUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v2

    .line 232
    goto :goto_0

    :cond_4
    move v1, v3

    .line 221
    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setAdsTimeout(J)V
    .locals 5

    .prologue
    .line 175
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->timeTillAds:Ljava/util/Date;

    .line 176
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/MediationManager$3;

    invoke-direct {v1, p0}, Lcom/heyzap/mediation/MediationManager$3;-><init>(Lcom/heyzap/mediation/MediationManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public setNetworkCallbackListener(Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/heyzap/mediation/MediationManager;->networkCallbackListenerProxy:Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;->setNetworkCallbackListener(Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V

    .line 276
    return-void
.end method

.method public setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->setIncentiveListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V

    .line 272
    return-void
.end method

.method public setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    invoke-virtual {v0, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->setListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 268
    return-void
.end method

.method public setRecentActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/ContextReference;->updateContext(Landroid/content/Context;)V

    .line 264
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/ContextReference;->updateContext(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.heyzap.sdk.ads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/util/Date;

    const-string v2, "time_till_ads"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/heyzap/mediation/MediationManager;->timeTillAds:Ljava/util/Date;

    .line 108
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/heyzap/mediation/MediationManager$1;

    invoke-direct {v1, p0}, Lcom/heyzap/mediation/MediationManager$1;-><init>(Lcom/heyzap/mediation/MediationManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method
