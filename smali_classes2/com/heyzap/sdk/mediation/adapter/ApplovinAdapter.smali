.class public Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "ApplovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$4;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AppLovinErrorCodes;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;
    }
.end annotation


# static fields
.field private static CANON:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;


# instance fields
.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;>;"
        }
    .end annotation
.end field

.field sdk:Lcom/applovin/sdk/AppLovinSdk;

.field private setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/common/concurrency/SettableFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "AppLovin"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 44
    const-string v0, "com.applovin.sdk.AppLovinSdk"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->KLASS:Ljava/lang/String;

    .line 45
    const-string v0, "applovin"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->CANON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 49
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 50
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    .line 153
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2, v3, v0}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 179
    return-void
.end method

.method private createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method private doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->isDebug(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v1

    const-string v2, "sdk_key"

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 128
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 130
    const-string v0, "initialized"

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 275
    return-void
.end method

.method public awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
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
    .line 137
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public fetch(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$4;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 193
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "ad unit not supported"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    return-object v0

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v1

    .line 190
    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;

    invoke-direct {v2, v0, v1, p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    invoke-virtual {v1, v2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 441
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.applovin.adview.AppLovinInterstitialActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.applovin.adview.AppLovinConfirmationActivity"

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
    .line 257
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$4;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 259
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAllAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 2
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
    .line 247
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->CANON:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 2
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
    .line 252
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "6.0.0"

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
    .line 435
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 448
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted(Ljava/util/Collection;)Z
    .locals 1
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
    .line 142
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public onInit()V
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "unsupported ad unit"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->setDefaultValue(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    move-result-object v1

    .line 202
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v8

    .line 203
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    .line 205
    new-instance v7, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    invoke-direct {v7}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;-><init>()V

    .line 206
    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;

    invoke-direct {v2, v7, p0, v3}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;)V

    .line 208
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, v8}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/heyzap/common/concurrency/SettableFuture;

    .line 210
    invoke-virtual {v6}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :try_start_0
    invoke-virtual {v6}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->success:Z

    if-nez v3, :cond_2

    .line 219
    :cond_0
    iget-object v0, v7, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    move-object v0, v7

    .line 242
    :goto_1
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v3

    goto :goto_0

    .line 223
    :cond_2
    sget-object v3, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$4;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {v8}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 235
    iget-object v0, v7, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->UNSUPPORTED_AD_UNIT:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 237
    :goto_2
    invoke-virtual {v6}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 239
    invoke-direct {p0, v8}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    :cond_3
    move-object v0, v7

    .line 242
    goto :goto_1

    .line 225
    :pswitch_0
    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v3, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v1

    .line 226
    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 227
    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 228
    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 229
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->cachedAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v1, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_2

    .line 232
    :pswitch_1
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    goto :goto_2

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 95
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Ljava/util/Set;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 118
    :goto_0
    return-object v1

    .line 115
    :cond_0
    new-instance v0, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
