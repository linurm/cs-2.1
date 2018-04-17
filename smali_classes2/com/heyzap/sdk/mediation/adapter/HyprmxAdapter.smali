.class public Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "HyprmxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$6;,
        Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;,
        Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;,
        Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;
    }
.end annotation


# static fields
.field private static CANON:Ljava/lang/String;

.field private static DISTRIBUTOR_ID_KEY:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;

.field private static PROPERTY_ID_KEY:Ljava/lang/String;


# instance fields
.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;",
            ">;>;"
        }
    .end annotation
.end field

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
    .line 37
    const-string v0, "HyprMX"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "com.hyprmx.android.sdk.HyprMXPresentation"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->KLASS:Ljava/lang/String;

    .line 39
    const-string v0, "hyprmx"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->CANON:Ljava/lang/String;

    .line 40
    const-string v0, "distributor_id"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->DISTRIBUTOR_ID_KEY:Ljava/lang/String;

    .line 41
    const-string v0, "property_id"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->PROPERTY_ID_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 43
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 44
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    .line 172
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2, v3, v0}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 198
    return-void
.end method

.method private createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method private doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->DISTRIBUTOR_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v1

    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->PROPERTY_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$5;-><init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 264
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
    .line 161
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public fetch(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$6;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 209
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "ad unit not supported"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    new-instance v1, Lcom/hyprmx/android/sdk/HyprMXPresentation;

    invoke-direct {v1}, Lcom/hyprmx/android/sdk/HyprMXPresentation;-><init>()V

    .line 206
    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;

    invoke-direct {v2, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/hyprmx/android/sdk/HyprMXPresentation;)V

    invoke-virtual {v1, v2}, Lcom/hyprmx/android/sdk/HyprMXPresentation;->prepare(Lcom/hyprmx/android/sdk/utility/OfferHolder$OnOffersAvailableResponseReceivedListener;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 90
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.hyprmx.android.sdk.activity.HyprMXOfferViewerActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.hyprmx.android.sdk.activity.HyprMXSplashActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.hyprmx.android.sdk.activity.HyprMXOfferListActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.hyprmx.android.sdk.activity.HyprMXNoOffersActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.hyprmx.android.sdk.activity.HyprMXWebTrafficActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.heyzap.sdk.ads.HeyzapProxyActivity"

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
    .line 377
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$6;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 381
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 379
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 377
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
    .line 367
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->CANON:Ljava/lang/String;

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
    .line 372
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "17"

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
    .line 85
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
    .line 387
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

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
    .line 166
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public onInit()V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "unsupported ad unit"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->setDefaultValue(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 253
    return-object v0
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
    .line 103
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 107
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Ljava/util/Set;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 128
    :goto_0
    return-object v1

    .line 126
    :cond_0
    new-instance v0, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
