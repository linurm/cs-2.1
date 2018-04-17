.class Lcom/heyzap/sdk/ads/MediationTestActivity$8$1;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$8;

.field final synthetic val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$8;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$8;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8$1;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8$1;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "future failure"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    .line 421
    if-eqz v0, :cond_0

    const-string v0, "Ad available"

    .line 423
    :goto_0
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$8$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$8;

    iget-object v1, v1, Lcom/heyzap/sdk/ads/MediationTestActivity$8;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    return-void

    .line 421
    :cond_0
    const-string v0, "There was an error fetching an ad."

    goto :goto_0
.end method
