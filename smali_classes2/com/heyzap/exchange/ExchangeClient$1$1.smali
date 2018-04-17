.class Lcom/heyzap/exchange/ExchangeClient$1$1;
.super Ljava/lang/Object;
.source "ExchangeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/exchange/ExchangeClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/exchange/ExchangeClient$1;

.field final synthetic val$client:Lcom/heyzap/exchange/ExchangeClient;


# direct methods
.method constructor <init>(Lcom/heyzap/exchange/ExchangeClient$1;Lcom/heyzap/exchange/ExchangeClient;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/heyzap/exchange/ExchangeClient$1$1;->this$0:Lcom/heyzap/exchange/ExchangeClient$1;

    iput-object p2, p0, Lcom/heyzap/exchange/ExchangeClient$1$1;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$1$1;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    invoke-virtual {v0}, Lcom/heyzap/exchange/ExchangeClient;->load()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeClient$1$1;->this$0:Lcom/heyzap/exchange/ExchangeClient$1;

    iget-object v1, v1, Lcom/heyzap/exchange/ExchangeClient$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
