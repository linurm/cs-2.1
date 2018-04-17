.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->onVideoCompleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;

.field final synthetic val$skipped:Z


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;Z)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;

    iput-boolean p2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->val$skipped:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->access$900(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    iget-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->val$skipped:Z

    if-eqz v0, :cond_0

    const-string v0, "incentivized_result_incomplete"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v0

    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->val$skipped:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 370
    return-void

    .line 368
    :cond_0
    const-string v0, "incentivized_result_complete"

    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
