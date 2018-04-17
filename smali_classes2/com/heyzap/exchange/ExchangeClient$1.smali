.class final Lcom/heyzap/exchange/ExchangeClient$1;
.super Ljava/lang/Object;
.source "ExchangeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/exchange/ExchangeClient;->fetch(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/util/EnumSet;Ljava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

.field final synthetic val$creativeTypes:Ljava/util/EnumSet;

.field final synthetic val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$ref:Lcom/heyzap/internal/ContextReference;

.field final synthetic val$reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

.field final synthetic val$uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/lang/String;Ljava/util/EnumSet;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$ref:Lcom/heyzap/internal/ContextReference;

    iput-object p2, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    iput-object p3, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$creativeTypes:Ljava/util/EnumSet;

    iput-object p5, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    iput-object p6, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p7, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$ref:Lcom/heyzap/internal/ContextReference;

    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$creativeTypes:Ljava/util/EnumSet;

    iget-object v4, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/heyzap/exchange/ExchangeClient;->access$000(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/lang/String;Ljava/util/EnumSet;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ResponseHandler;

    .line 156
    invoke-virtual {v0}, Lcom/heyzap/exchange/ResponseHandler;->getClient()Lcom/heyzap/exchange/ExchangeClient;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0, v2}, Lcom/heyzap/exchange/ExchangeEventReporter;->bindFetch(Lcom/heyzap/exchange/ExchangeClient;Lcom/heyzap/common/concurrency/SettableFuture;)V

    .line 161
    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/heyzap/exchange/ExchangeClient$1$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/exchange/ExchangeClient$1$1;-><init>(Lcom/heyzap/exchange/ExchangeClient$1;Lcom/heyzap/exchange/ExchangeClient;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeClient$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
