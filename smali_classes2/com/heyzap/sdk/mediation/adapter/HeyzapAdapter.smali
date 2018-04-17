.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "HeyzapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$5;,
        Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;,
        Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;
    }
.end annotation


# static fields
.field private static AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

.field private static CREATIVE_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

.field protected adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field protected final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->CREATIVE_TYPES:Ljava/util/EnumSet;

    .line 38
    sget-object v0, Lcom/heyzap/internal/Constants$AuctionType;->MONETIZATION:Lcom/heyzap/internal/Constants$AuctionType;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 34
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 35
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 36
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 292
    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 107
    return-void
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 190
    return-void
.end method

.method public awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 2
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
    .line 194
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public createRequest()Lcom/heyzap/house/request/AdRequest;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/heyzap/house/request/AdRequest;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->CREATIVE_TYPES:Ljava/util/EnumSet;

    sget-object v2, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/heyzap/house/request/AdRequest;-><init>(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setIsImmediate(Z)V

    .line 67
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setAuctionType(Lcom/heyzap/internal/Constants$AuctionType;)V

    .line 68
    return-object v0
.end method

.method public fetch(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->createRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    .line 74
    iput-object v0, p1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->adRequest:Lcom/heyzap/house/request/AdRequest;

    .line 75
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setOnIncentiveListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->fetch(Landroid/content/Context;)V

    .line 81
    return-void
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
    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.heyzap.sdk.ads.HeyzapInterstitialActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.heyzap.sdk.ads.HeyzapVideoActivity"

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
    .line 174
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 178
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 176
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getAllAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 1
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
    .line 164
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "heyzap"

    return-object v0
.end method

.method public getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 1
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
    .line 169
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "Heyzap"

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->getVersion()Ljava/lang/String;

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
    .line 308
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 320
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

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
    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    .line 225
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public onInit()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    invoke-direct {v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;-><init>()V

    .line 147
    iget-object v0, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v4, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v5, "Ad unit not supported"

    invoke-direct {v2, v4, v5}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 148
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 149
    iget-object v7, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    invoke-direct {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;-><init>()V

    :goto_1
    invoke-virtual {v7, v6, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 148
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 149
    goto :goto_1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const-string v0, "initialized"

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 159
    :cond_2
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 8

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    .line 114
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v4}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v5, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    .line 118
    iget-object v5, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->adRequest:Lcom/heyzap/house/request/AdRequest;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->adRequest:Lcom/heyzap/house/request/AdRequest;

    invoke-virtual {v5}, Lcom/heyzap/house/request/AdRequest;->isReady()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v5, v4, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 120
    iget-object v5, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v5, v4, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 121
    iget-object v5, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v5, v4, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 122
    iget-object v5, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v5, v4, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 123
    iget-object v5, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v5, v4, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 124
    iget-object v5, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->adRequest:Lcom/heyzap/house/request/AdRequest;

    invoke-virtual {v5, v1, v2, v3}, Lcom/heyzap/house/request/AdRequest;->show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v3, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v3

    new-instance v5, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    invoke-direct {v5}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;-><init>()V

    invoke-virtual {v1, v3, v5}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 127
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->impressionListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v6, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v6, v7, v3}, Lcom/heyzap/common/concurrency/FutureUtils;->wrapTimeout(Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;

    invoke-direct {v1, p0, v2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 139
    :goto_0
    return-object v4

    .line 137
    :cond_0
    iget-object v0, v4, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 4
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
    .line 199
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 203
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v3, v3, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/heyzap/house/Manager;->start(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Ljava/util/Set;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 220
    :goto_0
    return-object v1

    .line 218
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
