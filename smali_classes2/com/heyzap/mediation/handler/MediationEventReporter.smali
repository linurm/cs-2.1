.class public Lcom/heyzap/mediation/handler/MediationEventReporter;
.super Ljava/lang/Object;
.source "MediationEventReporter.java"


# instance fields
.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 29
    iput-object p1, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->onImpression(Lcom/heyzap/http/RequestParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->onClick(Lcom/heyzap/http/RequestParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/heyzap/mediation/handler/MediationEventReporter;->onIncentiveComplete(Lcom/heyzap/http/RequestParams;Ljava/lang/Boolean;)V

    return-void
.end method

.method private createParams(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/MediationResult$NetworkResult;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/request/MediationRequest;",
            "Lcom/heyzap/mediation/MediationResult;",
            "Lcom/heyzap/mediation/MediationResult$NetworkResult;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v0, "tracking_id"

    iget-object v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "mediation_id"

    iget-object v2, p2, Lcom/heyzap/mediation/MediationResult;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "network"

    iget-object v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->network:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "ad_unit"

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heyzap/internal/Constants$AdUnit;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "tag"

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/heyzap/internal/Constants;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "network_version"

    iget-object v0, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "ordinal"

    iget v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->ordinal:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "score"

    iget-object v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->score:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "creative_types"

    const-string v2, ","

    iget-object v3, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->creativeTypes:Ljava/util/Collection;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-object v1

    .line 142
    :cond_0
    iget-object v0, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onClick(Lcom/heyzap/http/RequestParams;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/click"

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$7;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/handler/MediationEventReporter$7;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V

    invoke-static {v0, v1, p1, v2}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 107
    return-void
.end method

.method private onFetch(Lcom/heyzap/http/RequestParams;Lcom/heyzap/mediation/MediationResult$NetworkResult;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p2, Lcom/heyzap/mediation/MediationResult$NetworkResult;->fetchResult:Lcom/heyzap/common/lifecycle/FetchResult;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "failure_reason"

    iget-object v1, p2, Lcom/heyzap/mediation/MediationResult$NetworkResult;->fetchResult:Lcom/heyzap/common/lifecycle/FetchResult;

    iget-object v1, v1, Lcom/heyzap/common/lifecycle/FetchResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$FetchFailureReason;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string v1, "success"

    iget-object v0, p2, Lcom/heyzap/mediation/MediationResult$NetworkResult;->fetchResult:Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/fetch"

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$8;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/handler/MediationEventReporter$8;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V

    invoke-static {v0, v1, p1, v2}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 120
    return-void

    .line 115
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private onImpression(Lcom/heyzap/http/RequestParams;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/impression"

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$6;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/handler/MediationEventReporter$6;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V

    invoke-static {v0, v1, p1, v2}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 100
    return-void
.end method

.method private onIncentiveComplete(Lcom/heyzap/http/RequestParams;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "complete"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/complete"

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$9;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/handler/MediationEventReporter$9;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V

    invoke-static {v0, v1, p1, v2}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 133
    return-void

    .line 127
    :cond_0
    const-string v0, "complete"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bindDisplayCallbacks(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p2, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    invoke-direct {p0, p1, p2, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter;->createParams(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/MediationResult$NetworkResult;)Ljava/util/Map;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_0

    .line 43
    iget-object v1, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/heyzap/mediation/handler/MediationEventReporter$1;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Ljava/util/Map;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    iget-object v3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/common/lifecycle/EventStream;->addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V

    .line 65
    :goto_0
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_1

    .line 66
    iget-object v1, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/heyzap/mediation/handler/MediationEventReporter$3;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Ljava/util/Map;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    iget-object v3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/common/lifecycle/EventStream;->addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V

    .line 86
    :goto_1
    iget-object v1, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$5;

    iget-object v3, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {v2, p0, v3, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter$5;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 94
    return-void

    .line 54
    :cond_0
    iget-object v1, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v1}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$2;

    iget-object v3, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v3}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter$2;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v1}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$4;

    iget-object v3, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v3}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter$4;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1
.end method

.method public sendFetchResults(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p2, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter;->createParams(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/MediationResult$NetworkResult;)Ljava/util/Map;

    move-result-object v2

    .line 35
    new-instance v3, Lcom/heyzap/http/RequestParams;

    invoke-direct {v3, v2}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v3, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter;->onFetch(Lcom/heyzap/http/RequestParams;Lcom/heyzap/mediation/MediationResult$NetworkResult;)V

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
