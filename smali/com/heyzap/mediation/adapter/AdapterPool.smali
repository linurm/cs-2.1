.class public Lcom/heyzap/mediation/adapter/AdapterPool;
.super Ljava/lang/Object;
.source "AdapterPool.java"


# instance fields
.field private final adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private final networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

.field private pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 41
    iput-object p2, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 42
    iput-object p3, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 43
    iput-object p4, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    iput-object p5, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 45
    iput-object p6, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/adapter/AdapterPool;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private setMediationMetricsCallbacks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 113
    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    .line 114
    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingVersion()Ljava/lang/String;

    .line 115
    new-instance v2, Lcom/heyzap/mediation/adapter/AdapterPool$1;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/adapter/AdapterPool$1;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;)V

    iget-object v3, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public addAdapters(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 50
    invoke-static {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->createAdapterFromKlass(Ljava/lang/Class;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    instance-of v0, v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "Mediation is disabled, skipping %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isOnBoard()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SDK is present."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->info(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SDK is not present."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    const-string v2, "could not load adapter for %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    return-void
.end method

.method public declared-synchronized clear(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public configure(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/adapter/AdapterConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 94
    invoke-virtual {v2}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->contextRef:Lcom/heyzap/internal/ContextReference;

    iget-object v3, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

    iget-object v4, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v5, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    invoke-virtual/range {v0 .. v7}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->init(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/adapter/AdapterConfiguration;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V

    .line 98
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    const-string v1, "(CONFIG) Failed to initialize adapter: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 107
    invoke-direct {p0, v8}, Lcom/heyzap/mediation/adapter/AdapterPool;->setMediationMetricsCallbacks(Ljava/util/List;)V

    .line 109
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 3

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 148
    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/util/EnumSet;)Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;)",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;"
        }
    .end annotation

    .prologue
    .line 138
    .line 139
    const-string v0, "heyzap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string p1, "heyzap_video"

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parseConfig(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/adapter/AdapterConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 69
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 71
    :try_start_0
    new-instance v2, Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;-><init>(Lorg/json/JSONObject;)V

    .line 72
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v2}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "heyzap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v2, Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;-><init>(Lorg/json/JSONObject;)V

    .line 77
    const-string v4, "heyzap_video"

    invoke-virtual {v2, v4}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->setCanonicalName(Ljava/lang/String;)V

    .line 78
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v2, "adding heyzap_video config"

    invoke-static {v2}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    const-string v4, "(CONFIG) Failed to load config for: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 84
    :catch_1
    move-exception v2

    .line 85
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 88
    :cond_1
    return-object v3
.end method

.method public declared-synchronized put(Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 3

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "(POOL) Removed session: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
