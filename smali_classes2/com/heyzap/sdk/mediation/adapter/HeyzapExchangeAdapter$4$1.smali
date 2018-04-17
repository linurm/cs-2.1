.class Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "HeyzapExchangeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 243
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$200(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 244
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$200(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/heyzap/common/concurrency/SettableFuture;

    .line 246
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->getCreativeTypesForAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/util/EnumSet;

    move-result-object v2

    .line 248
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/exchange/ExchangeEventReporter;

    move-result-object v1

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v3, v3, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v3}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v5, v5, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v5}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    iget-object v6, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v6, v6, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v6}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/heyzap/exchange/ExchangeClient;->fetch(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/util/EnumSet;Ljava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;

    invoke-direct {v1, p0, v0, v7}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$900(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 271
    return-void
.end method
