.class public abstract Lcom/heyzap/mediation/abstr/NetworkAdapter;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
    }
.end annotation


# static fields
.field private static networkAdapterSingletons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

.field private contextRef:Lcom/heyzap/internal/ContextReference;

.field protected executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private fetchConsumer:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

.field private fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

.field protected uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkAdapterSingletons:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->adapterInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lcom/heyzap/mediation/adapter/AdapterConfiguration;Lcom/heyzap/internal/ContextReference;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->adapterInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-object p1, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 46
    return-void
.end method

.method public static createAdapterFromKlass(Ljava/lang/Class;)Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;)",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;"
        }
    .end annotation

    .prologue
    .line 164
    sget-object v1, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkAdapterSingletons:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 165
    if-nez v1, :cond_0

    .line 167
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 168
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-object v1, v0

    .line 169
    sget-object v2, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkAdapterSingletons:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v2

    .line 171
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
.end method

.method public abstract awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation
.end method

.method public checkActivities(Landroid/app/Activity;)Z
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-static {p1, v0}, Lcom/heyzap/internal/Utils;->activityExistsInPackage(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is missing from your manifest and is required for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->warn(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 122
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public checkPermissions(Landroid/app/Activity;)Z
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-static {p1, v0}, Lcom/heyzap/internal/Utils;->packageHasPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is missing from your manifest and is required for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->warn(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public abstract getActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdUnitsForCreativeType(Lcom/heyzap/internal/Constants$CreativeType;)Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end method

.method public getAdUnitsForCreativeType(Ljava/util/Collection;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 71
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$CreativeType;

    .line 72
    invoke-virtual {p0, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getAdUnitsForCreativeType(Lcom/heyzap/internal/Constants$CreativeType;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 74
    :cond_0
    return-object v1
.end method

.method public abstract getAllAdUnitCapabilities()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCanonicalName()Ljava/lang/String;
.end method

.method public final getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    return-object v0
.end method

.method public abstract getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end method

.method protected final getContextRef()Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->contextRef:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method protected getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->fetchConsumer:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    return-object v0
.end method

.method public getFetchStore()Lcom/heyzap/mediation/FetchRequestStore;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

    return-object v0
.end method

.method public abstract getMarketingName()Ljava/lang/String;
.end method

.method public abstract getMarketingVersion()Ljava/lang/String;
.end method

.method public getMaxScore(Ljava/lang/Double;Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCallbackListener()Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    return-object v0
.end method

.method public abstract getPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
.end method

.method public init(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/adapter/AdapterConfiguration;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 92
    iput-object p2, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 93
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    invoke-direct {v0, p3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;-><init>(Lcom/heyzap/mediation/FetchRequestStore;)V

    iput-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->fetchConsumer:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    .line 94
    iput-object p4, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 95
    iput-object p5, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    iput-object p6, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 97
    iput-object p3, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 98
    iput-object p7, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    .line 99
    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onInit()V

    .line 100
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->adapterInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    return-void
.end method

.method public final isAdUnitCapable(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->adapterInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public abstract isInterstitialVideo()Z
.end method

.method public abstract isOnBoard()Ljava/lang/Boolean;
.end method

.method public abstract isReady()Ljava/lang/Boolean;
.end method

.method public final isReady(Lcom/heyzap/internal/Constants$AdUnit;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move v0, v1

    .line 132
    goto :goto_0

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public abstract isStarted(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onBackPressed()Z
.end method

.method public onCallbackEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkCallbackListener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;->onNetworkCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public abstract onInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation
.end method

.method public final setConfiguration(Lcom/heyzap/mediation/adapter/AdapterConfiguration;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 153
    return-void
.end method

.method public abstract show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
.end method

.method public abstract start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)",
            "Lcom/heyzap/common/concurrency/SettableFuture;"
        }
    .end annotation
.end method
