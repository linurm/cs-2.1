.class public Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "AdcolonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$5;,
        Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;,
        Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;,
        Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;,
        Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;
    }
.end annotation


# static fields
.field private static APP_KEY:Ljava/lang/String;

.field private static CANON:Ljava/lang/String;

.field private static INCENTIVIZED_KEY:Ljava/lang/String;

.field private static INTERSTITIAL_KEY:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;


# instance fields
.field private adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private appId:Ljava/lang/String;

.field private configStr:Ljava/lang/String;

.field private enabledAdUnits:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private incentivizedZoneId:Ljava/lang/String;

.field initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/common/concurrency/SettableFuture;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialZoneId:Ljava/lang/String;

.field lastIncentivizedDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;

.field private zoneToAdUnitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "com.jirbo.adcolony.AdColony"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->KLASS:Ljava/lang/String;

    .line 41
    const-string v0, "AdColony"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "adcolony"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->CANON:Ljava/lang/String;

    .line 43
    const-string v0, "interstitial_zone_id"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->INTERSTITIAL_KEY:Ljava/lang/String;

    .line 44
    const-string v0, "incentivized_zone_id"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->INCENTIVIZED_KEY:Ljava/lang/String;

    .line 45
    const-string v0, "app_id"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->APP_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 51
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    .line 53
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 54
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 418
    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->zoneToAdUnitMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/mediation/adapter/AdUnitAliasMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->configStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 339
    return-void
.end method

.method public attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->getAliases(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 262
    return-void
.end method

.method public awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    .line 133
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
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
    .line 445
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.jirbo.adcolony.AdColonyOverlay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.jirbo.adcolony.AdColonyFullscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.jirbo.adcolony.AdColonyBrowser"

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
    .line 321
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 327
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 323
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 321
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
    .line 311
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->CANON:Ljava/lang/String;

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
    .line 316
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "2.2.0"

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
    .line 439
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
    .line 454
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

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
    .line 67
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

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
    .line 165
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public onInit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 87
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    .line 88
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->add(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 90
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    invoke-direct {v0, p0, v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    .line 91
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v3, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v4, "Unsupported Ad Unit"

    invoke-direct {v2, v3, v4}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->setDefaultValue(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    invoke-direct {v2, p0, v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    invoke-direct {v2, p0, v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->setAliasMap(Lcom/heyzap/mediation/adapter/AdUnitAliasMap;)V

    .line 99
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "Context is not an Activity. Please pass an Activity to HeyzapAds.start to enable adcolony."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->appId:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :cond_1
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "No App ID for AdColony"

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->appId:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->INTERSTITIAL_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->INCENTIVIZED_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->zoneToAdUnitMap:Ljava/util/HashMap;

    .line 114
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->zoneToAdUnitMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->zoneToAdUnitMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->INTERSTITIAL_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->INCENTIVIZED_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "No Zone ID for AdColony"

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "version:%d,store:%s,skippable"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/heyzap/internal/Utils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v4, v4, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->store:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->configStr:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 122
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    .line 128
    :cond_4
    :goto_0
    return-void

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 124
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    goto :goto_0

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 126
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    goto :goto_0
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 266
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    .line 268
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    .line 270
    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 272
    new-instance v2, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v2}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 274
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v3, v1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    .line 276
    sget-object v3, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    iget-object v4, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v4, v1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 302
    iget-object v0, v2, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 305
    :cond_0
    :goto_0
    return-object v2

    .line 278
    :pswitch_0
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iput-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->lastIncentivizedDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;

    .line 280
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;

    invoke-direct {v3, v2, p0, v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;-><init>(Lcom/heyzap/common/lifecycle/AdDisplay;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 284
    :goto_1
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    sget-object v1, Lcom/heyzap/common/lifecycle/FetchResult;->NOT_READY:Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    invoke-direct {v3, p0, v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-virtual {v0, v1, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 286
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, v2, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v3, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v1, v3}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    goto :goto_1

    .line 291
    :pswitch_1
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;

    invoke-direct {v3, v2, p0, v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdListener;-><init>(Lcom/heyzap/common/lifecycle/AdDisplay;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    .line 296
    :goto_2
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    sget-object v1, Lcom/heyzap/common/lifecycle/FetchResult;->NOT_READY:Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    invoke-direct {v3, p0, v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-virtual {v0, v1, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 298
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v1, v2, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v3, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v1, v3}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    goto :goto_2

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
            "Lcom/heyzap/common/concurrency/SettableFuture;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v2, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 145
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Ljava/util/Set;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 160
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
