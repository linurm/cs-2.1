.class Lcom/heyzap/mediation/adapter/AdapterPool$1$1;
.super Ljava/lang/Object;
.source "AdapterPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/adapter/AdapterPool$1;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/adapter/AdapterPool$1;

.field final synthetic val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool$1;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->this$1:Lcom/heyzap/mediation/adapter/AdapterPool$1;

    iput-object p2, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V

    goto :goto_0
.end method
