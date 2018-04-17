.class Lcom/heyzap/exchange/ExchangeEventReporter$4;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "ExchangeEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/exchange/ExchangeEventReporter;->bindDisplay(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/exchange/ExchangeEventReporter;

.field final synthetic val$client:Lcom/heyzap/exchange/ExchangeClient;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/heyzap/exchange/ExchangeEventReporter$4;->this$0:Lcom/heyzap/exchange/ExchangeEventReporter;

    iput-object p3, p0, Lcom/heyzap/exchange/ExchangeEventReporter$4;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    iput-object p4, p0, Lcom/heyzap/exchange/ExchangeEventReporter$4;->val$params:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeEventReporter$4;->this$0:Lcom/heyzap/exchange/ExchangeEventReporter;

    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeEventReporter$4;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v2, p0, Lcom/heyzap/exchange/ExchangeEventReporter$4;->val$params:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/heyzap/exchange/ExchangeEventReporter;->access$300(Lcom/heyzap/exchange/ExchangeEventReporter;Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V

    .line 76
    :cond_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/exchange/ExchangeEventReporter$4;->run(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method
