.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 118
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->val$fetchHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    sget-object v1, Lcom/heyzap/common/lifecycle/FetchResult;->NOT_READY:Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$000()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->retry()V

    .line 125
    :cond_0
    return-void
.end method
