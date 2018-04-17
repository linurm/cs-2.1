.class Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "HeyzapExchangeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/exchange/ExchangeClient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;

.field final synthetic val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {p0, p2}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/exchange/ExchangeClient;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;

    invoke-direct {v1, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;-><init>(Lcom/heyzap/exchange/ExchangeClient;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 268
    :goto_0
    return-void

    .line 260
    :cond_0
    if-eqz p2, :cond_1

    .line 261
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 266
    :goto_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$200(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;->retry()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "Unknown error during fetch (No Exception)"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Lcom/heyzap/exchange/ExchangeClient;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1$1;->run(Lcom/heyzap/exchange/ExchangeClient;Ljava/lang/Exception;)V

    return-void
.end method
