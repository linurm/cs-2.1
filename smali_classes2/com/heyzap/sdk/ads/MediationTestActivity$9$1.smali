.class Lcom/heyzap/sdk/ads/MediationTestActivity$9$1;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Lcom/heyzap/common/lifecycle/EventStream$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/common/lifecycle/EventStream$EventListener",
        "<",
        "Lcom/heyzap/common/lifecycle/DisplayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$9;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/heyzap/common/lifecycle/DisplayResult;)V
    .locals 3

    .prologue
    .line 456
    iget-boolean v0, p1, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$9;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const-string v1, "Display Attempt Failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 459
    :cond_0
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 453
    check-cast p1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/MediationTestActivity$9$1;->onEvent(Lcom/heyzap/common/lifecycle/DisplayResult;)V

    return-void
.end method
