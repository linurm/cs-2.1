.class public Lcom/heyzap/exchange/ExchangeEventReporter;
.super Ljava/lang/Object;
.source "ExchangeEventReporter.java"


# instance fields
.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 25
    iput-object p1, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeClient;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/heyzap/exchange/ExchangeEventReporter;->onFetch(Lcom/heyzap/exchange/ExchangeClient;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/heyzap/exchange/ExchangeEventReporter;->onImpression(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/heyzap/exchange/ExchangeEventReporter;->onClick(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/heyzap/exchange/ExchangeEventReporter;->onComplete(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V

    return-void
.end method

.method private onClick(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/exchange/ExchangeClient;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getRequestParams()Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->from(Lcom/heyzap/exchange/ExchangeRequestParams;)Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p2}, Lcom/heyzap/exchange/ExchangeRequestParams;->merge(Ljava/util/Map;)V

    .line 113
    const-string v1, "auction_extras"

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getAuctionData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "%s/%s/click"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getAdId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v2}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/heyzap/exchange/ExchangeEventReporter$6;

    invoke-direct {v3, p0}, Lcom/heyzap/exchange/ExchangeEventReporter$6;-><init>(Lcom/heyzap/exchange/ExchangeEventReporter;)V

    invoke-static {v2, v1, v0, v3}, Lcom/heyzap/common/net/APIClient;->simplePost(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;

    .line 118
    return-void
.end method

.method private onComplete(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/exchange/ExchangeClient;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getRequestParams()Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->from(Lcom/heyzap/exchange/ExchangeRequestParams;)Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p2}, Lcom/heyzap/exchange/ExchangeRequestParams;->merge(Ljava/util/Map;)V

    .line 123
    const-string v1, "auction_extras"

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getAuctionData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "%s/%s/complete"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getAdId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v2}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/heyzap/exchange/ExchangeEventReporter$7;

    invoke-direct {v3, p0}, Lcom/heyzap/exchange/ExchangeEventReporter$7;-><init>(Lcom/heyzap/exchange/ExchangeEventReporter;)V

    invoke-static {v2, v1, v0, v3}, Lcom/heyzap/common/net/APIClient;->simplePost(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;

    .line 128
    return-void
.end method

.method private onFetch(Lcom/heyzap/exchange/ExchangeClient;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method private onImpression(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/exchange/ExchangeClient;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getRequestParams()Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->from(Lcom/heyzap/exchange/ExchangeRequestParams;)Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p2}, Lcom/heyzap/exchange/ExchangeRequestParams;->merge(Ljava/util/Map;)V

    .line 87
    const-string v1, "auction_extras"

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getAuctionData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "markup"

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getMarkup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "%s/%s/impression"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/heyzap/exchange/ExchangeClient;->getAdId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v2}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/heyzap/exchange/ExchangeEventReporter$5;

    invoke-direct {v3, p0}, Lcom/heyzap/exchange/ExchangeEventReporter$5;-><init>(Lcom/heyzap/exchange/ExchangeEventReporter;)V

    invoke-static {v2, v1, v0, v3}, Lcom/heyzap/common/net/APIClient;->simplePost(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;

    .line 108
    return-void
.end method


# virtual methods
.method public bindDisplay(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/exchange/ExchangeClient;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p1, Lcom/heyzap/exchange/ExchangeClient;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/exchange/ExchangeEventReporter$2;

    iget-object v2, p1, Lcom/heyzap/exchange/ExchangeClient;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v2}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/heyzap/exchange/ExchangeEventReporter$2;-><init>(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 59
    iget-object v0, p1, Lcom/heyzap/exchange/ExchangeClient;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/exchange/ExchangeEventReporter$3;

    iget-object v2, p1, Lcom/heyzap/exchange/ExchangeClient;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v2}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/heyzap/exchange/ExchangeEventReporter$3;-><init>(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 70
    iget-object v0, p1, Lcom/heyzap/exchange/ExchangeClient;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/exchange/ExchangeEventReporter$4;

    iget-object v2, p1, Lcom/heyzap/exchange/ExchangeClient;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/heyzap/exchange/ExchangeEventReporter$4;-><init>(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 78
    return-void
.end method

.method public bindFetch(Lcom/heyzap/exchange/ExchangeClient;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/exchange/ExchangeClient;",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/exchange/ExchangeClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p1, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/exchange/ExchangeEventReporter$1;

    iget-object v2, p1, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/heyzap/exchange/ExchangeEventReporter$1;-><init>(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/exchange/ExchangeClient;)V

    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 45
    return-void
.end method
