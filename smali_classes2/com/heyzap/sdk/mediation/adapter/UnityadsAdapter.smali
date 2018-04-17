.class public Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "UnityadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$4;,
        Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;,
        Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;,
        Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;
    }
.end annotation


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

.field private static CANON:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static LOAD_NETWORKS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;

.field private static SHOW_NETWORKS:Ljava/lang/String;


# instance fields
.field private adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private displayHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

.field private failedZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zoneIdIncentivized:Ljava/lang/String;

.field private zoneIdVideo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "com.unity3d.ads.android.UnityAds"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->KLASS:Ljava/lang/String;

    .line 38
    const-string v0, "UnityAds"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 39
    const-string v0, "unityads"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->CANON:Ljava/lang/String;

    .line 41
    const-string v0, "mobile_android"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->LOAD_NETWORKS:Ljava/lang/String;

    .line 42
    const-string v0, "mobile_android"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->SHOW_NETWORKS:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 45
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->failedZones:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 389
    return-void
.end method

.method static synthetic access$000()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->isReadyToShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    return-object v0
.end method

.method private attemptNextFetch()V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    invoke-direct {v2, p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 143
    return-void
.end method

.method private canShowAdsWithReflection(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    :try_start_0
    const-class v0, Lcom/unity3d/ads/android/UnityAds;

    const-string v1, "canShowAds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 272
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 282
    :cond_0
    :goto_1
    :try_start_1
    const-class v0, Lcom/unity3d/ads/android/UnityAds;

    const-string v1, "canShowAds"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 284
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 287
    :catch_1
    move-exception v0

    .line 289
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 294
    :cond_1
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 290
    :catch_2
    move-exception v0

    .line 291
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 275
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private getZoneId(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->zoneIdIncentivized:Ljava/lang/String;

    .line 101
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->zoneIdVideo:Ljava/lang/String;

    goto :goto_0
.end method

.method private isReadyToShow()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->SHOW_NETWORKS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->canShowAdsWithReflection(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNetworkReflection(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 299
    :try_start_0
    const-class v0, Lcom/unity3d/ads/android/UnityAds;

    const-string v1, "setNetwork"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 301
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private setNetworksReflection(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 310
    :try_start_0
    const-class v0, Lcom/unity3d/ads/android/UnityAds;

    const-string v1, "setNetworks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 311
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 205
    return-void
.end method

.method public awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 4
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

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getZoneId(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->failedZones:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getZoneId(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->BAD_CREDENTIALS:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "Zone ID unrecongized"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->isReadyToShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    goto :goto_0
.end method

.method public getActivities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.unity3d.ads.android.view.UnityAdsFullscreenActivity"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitsForCreativeType(Lcom/heyzap/internal/Constants$CreativeType;)Ljava/util/EnumSet;
    .locals 2
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

    .prologue
    .line 187
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$4;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAllAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->CANON:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 416
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStarted(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public onInit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "Context is not an Activity. Please pass an Activity to HeyzapAds.start to enable unity ads."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    .line 213
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->add(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 214
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->add(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 216
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "incentivized_placement_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->zoneIdIncentivized:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "video_placement_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->zoneIdVideo:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    .line 148
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    .line 151
    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getZoneId(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/String;

    move-result-object v1

    .line 153
    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;)V

    .line 154
    iput-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    .line 156
    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->failedZones:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, v2, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v3, "Bad zone id"

    invoke-direct {v1, v3}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 161
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->SHOW_NETWORKS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->setNetworkReflection(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->show()Z

    move-result v0

    .line 164
    if-nez v0, :cond_1

    .line 165
    iget-object v0, v2, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v3, "Display failed"

    invoke-direct {v1, v3}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    invoke-direct {v3}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->attemptNextFetch()V

    .line 172
    :cond_2
    return-object v2
.end method

.method public start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 3
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

    .prologue
    .line 225
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 227
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v1

    const-string v2, "game_id"

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 231
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isDebug(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->setDebugMode(Z)V

    .line 232
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;

    invoke-direct {v0, p0, p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 233
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->LOAD_NETWORKS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->setNetworksReflection(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$3;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/ContextReference;->addActivityUpdateListener(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)Z

    .line 242
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->attemptNextFetch()V

    .line 244
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "initialized"

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 249
    :cond_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method
