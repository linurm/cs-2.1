.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "UnityadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

.field final synthetic val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;->val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;->this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;->val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;->val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;->retry()V

    .line 137
    :cond_1
    return-void
.end method
