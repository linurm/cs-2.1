.class public Lcom/heyzap/mediation/config/MediationConfig;
.super Ljava/lang/Object;
.source "MediationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/config/MediationConfig$1;,
        Lcom/heyzap/mediation/config/MediationConfig$AdapterNotFoundException;
    }
.end annotation


# instance fields
.field private final adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final customPublisherData:Ljava/lang/String;

.field private displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private final filterManager:Lcom/heyzap/mediation/filters/FilterManager;

.field private final iapAdDisableTime:J

.field private final interstitialVideoTracker:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

.field private final loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

.field private serialMediator:Lcom/heyzap/mediation/display/SerialMediator;

.field private waterfallMediator:Lcom/heyzap/mediation/display/WaterfallMediator;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Lorg/json/JSONObject;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Lcom/heyzap/mediation/ConcurrentLoaderStrategy;Lcom/heyzap/mediation/filters/FilterManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfig;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 47
    iput-object p3, p0, Lcom/heyzap/mediation/config/MediationConfig;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    iput-object p4, p0, Lcom/heyzap/mediation/config/MediationConfig;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 49
    iput-object p5, p0, Lcom/heyzap/mediation/config/MediationConfig;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    .line 50
    iput-object p6, p0, Lcom/heyzap/mediation/config/MediationConfig;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    .line 51
    iput-object p7, p0, Lcom/heyzap/mediation/config/MediationConfig;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    .line 52
    iput-object p8, p0, Lcom/heyzap/mediation/config/MediationConfig;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    .line 53
    iput-object p6, p0, Lcom/heyzap/mediation/config/MediationConfig;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    .line 54
    new-instance v0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    invoke-direct {v0, p3}, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->interstitialVideoTracker:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    .line 55
    new-instance v0, Lcom/heyzap/mediation/display/SerialMediator;

    invoke-direct {v0, p5, p6, p8}, Lcom/heyzap/mediation/display/SerialMediator;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Lcom/heyzap/mediation/filters/FilterManager;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->serialMediator:Lcom/heyzap/mediation/display/SerialMediator;

    .line 56
    new-instance v0, Lcom/heyzap/mediation/display/WaterfallMediator;

    iget-object v5, p0, Lcom/heyzap/mediation/config/MediationConfig;->interstitialVideoTracker:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    move-object v1, p5

    move-object v2, p6

    move-object v3, p3

    move-object v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/mediation/display/WaterfallMediator;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/filters/FilterManager;Lcom/heyzap/mediation/filters/InterstitialVideoTracker;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->waterfallMediator:Lcom/heyzap/mediation/display/WaterfallMediator;

    .line 58
    const-string v0, "filters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/heyzap/mediation/filters/FilterManager;->configure(Lorg/json/JSONArray;)V

    .line 60
    const-string v0, "incentivized_daily_limit"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p8, v0}, Lcom/heyzap/mediation/filters/FilterManager;->addIncentiveDailyLimitFilter(I)V

    .line 61
    const-string v0, "ad_rate_limit_interval"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p8, v0}, Lcom/heyzap/mediation/filters/FilterManager;->addRateLimitIntervalFilter(I)V

    .line 62
    const-string v0, "disabled_tags"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/heyzap/mediation/filters/FilterManager;->addDisabledTagsFilter(Lorg/json/JSONArray;)V

    .line 64
    const-string v0, "iap_ad_disable_time"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->iapAdDisableTime:J

    .line 66
    const-string v0, "networks"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->parseConfig(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-virtual {p5, v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->configure(Ljava/util/List;)V

    .line 69
    const-string v0, "custom_publisher_data"

    const-string v1, "{}"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->customPublisherData:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;

    const-string v1, "loader"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p7, v0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->configure(Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;)V

    .line 73
    invoke-virtual {p7}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->start()V

    .line 74
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdapterPool()Lcom/heyzap/mediation/adapter/AdapterPool;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    return-object v0
.end method

.method public getCustomPublisherData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->customPublisherData:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayConfigLoader()Lcom/heyzap/mediation/display/DisplayConfigLoader;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    return-object v0
.end method

.method public getDisplayStrategy(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/mediation/display/Mediator;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/heyzap/mediation/config/MediationConfig$1;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->waterfallMediator:Lcom/heyzap/mediation/display/WaterfallMediator;

    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->serialMediator:Lcom/heyzap/mediation/display/SerialMediator;

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    return-object v0
.end method

.method public getIapAdDisableTime()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->iapAdDisableTime:J

    return-wide v0
.end method

.method public getInterstitialVideoTracker()Lcom/heyzap/mediation/filters/InterstitialVideoTracker;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->interstitialVideoTracker:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    return-object v0
.end method

.method public getLoaderStrategy()Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfig;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    return-object v0
.end method
