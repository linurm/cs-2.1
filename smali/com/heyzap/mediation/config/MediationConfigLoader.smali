.class public Lcom/heyzap/mediation/config/MediationConfigLoader;
.super Ljava/lang/Object;
.source "MediationConfigLoader.java"

# interfaces
.implements Lcom/heyzap/mediation/config/ConfigLoader;


# static fields
.field private static final CONFIGURATION_CACHE_KEY:Ljava/lang/String; = "config.cache"


# instance fields
.field private final adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

.field private final adapterScanner:Lcom/heyzap/mediation/adapter/AdapterScanner;

.field private final adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private final configurationCacheFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/config/MediationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private final filterManager:Lcom/heyzap/mediation/filters/FilterManager;

.field private final loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

.field private final networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

.field private final uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V
    .locals 7

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 64
    iput-object p2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    iput-object p4, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 66
    iput-object p3, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v0, Lcom/heyzap/mediation/adapter/AdapterScanner;

    invoke-direct {v0, p1}, Lcom/heyzap/mediation/adapter/AdapterScanner;-><init>(Lcom/heyzap/internal/ContextReference;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterScanner:Lcom/heyzap/mediation/adapter/AdapterScanner;

    .line 68
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 69
    iput-object p6, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    .line 71
    new-instance v0, Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    iget-object v6, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    move-object v1, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/heyzap/mediation/adapter/AdapterPool;-><init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    .line 72
    new-instance v0, Lcom/heyzap/mediation/filters/FilterManager;

    invoke-direct {v0, p1, p2}, Lcom/heyzap/mediation/filters/FilterManager;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    .line 74
    new-instance v0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    invoke-direct {v0, p1}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;-><init>(Lcom/heyzap/internal/ContextReference;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    .line 76
    new-instance v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-direct {v0, v1, p2, v2}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/FetchRequestStore;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    .line 79
    iput-object p5, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->storeConfigurationCache(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/mediation/config/MediationConfigLoader;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/FetchRequestStore;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/adapter/AdapterPool;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/filters/FilterManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    return-object v0
.end method

.method private static getConfigurationCache(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 182
    const-string v1, "com.heyzap.sdk.ads"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "config.cache"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-object v0

    .line 189
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 190
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    const-string v2, "MediationConfigLoader JSON Error!"

    invoke-static {v2, v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static storeConfigurationCache(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 178
    const-string v0, "com.heyzap.sdk.ads"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config.cache"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    return-void
.end method


# virtual methods
.method public get(Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/config/MediationConfigLoader$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/config/MediationConfigLoader$2;-><init>(Lcom/heyzap/mediation/config/MediationConfigLoader;Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V

    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 161
    return-void
.end method

.method public getFuture()Lcom/heyzap/common/concurrency/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<",
            "Lcom/heyzap/mediation/config/MediationConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public getPool()Lcom/heyzap/mediation/adapter/AdapterPool;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    return-object v0
.end method

.method public isOnBoard(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 9

    .prologue
    .line 84
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterScanner:Lcom/heyzap/mediation/adapter/AdapterScanner;

    invoke-virtual {v1}, Lcom/heyzap/mediation/adapter/AdapterScanner;->scan()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterPool;->addAdapters(Ljava/util/List;)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    invoke-virtual {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->start()V

    .line 98
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getConfigurationCache(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_0

    .line 103
    :try_start_0
    new-instance v0, Lcom/heyzap/mediation/config/MediationConfig;

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    iget-object v3, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    iget-object v5, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v6, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    iget-object v7, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    iget-object v8, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/config/MediationConfig;-><init>(Lcom/heyzap/internal/ContextReference;Lorg/json/JSONObject;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Lcom/heyzap/mediation/ConcurrentLoaderStrategy;Lcom/heyzap/mediation/filters/FilterManager;)V

    .line 106
    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_1
    new-instance v0, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    invoke-direct {v7, p0}, Lcom/heyzap/mediation/config/MediationConfigLoader$1;-><init>(Lcom/heyzap/mediation/config/MediationConfigLoader;)V

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v7, v1, v2}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v0}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 146
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->addAdapters(Ljava/util/List;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
