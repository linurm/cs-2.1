.class Lcom/heyzap/exchange/ExchangeEventReporter$1;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "ExchangeEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/exchange/ExchangeEventReporter;->bindFetch(Lcom/heyzap/exchange/ExchangeClient;Lcom/heyzap/common/concurrency/SettableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/common/lifecycle/FetchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/exchange/ExchangeEventReporter;

.field final synthetic val$client:Lcom/heyzap/exchange/ExchangeClient;

.field final synthetic val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/exchange/ExchangeClient;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->this$0:Lcom/heyzap/exchange/ExchangeEventReporter;

    iput-object p3, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p4, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    invoke-direct {p0, p2}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/common/lifecycle/FetchResult;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 32
    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, p2}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->this$0:Lcom/heyzap/exchange/ExchangeEventReporter;

    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    invoke-static {v0, v1}, Lcom/heyzap/exchange/ExchangeEventReporter;->access$000(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeClient;)V

    .line 43
    return-void

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_1
    if-eqz p1, :cond_2

    .line 37
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Ljava/lang/Throwable;

    iget-object v2, p1, Lcom/heyzap/common/lifecycle/FetchResult;->errorMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeEventReporter$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Unknown Error"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/exchange/ExchangeEventReporter$1;->run(Lcom/heyzap/common/lifecycle/FetchResult;Ljava/lang/Exception;)V

    return-void
.end method
