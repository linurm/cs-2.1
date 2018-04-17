.class Lcom/heyzap/sdk/ads/MediationTestActivity$6$2;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Lcom/heyzap/common/lifecycle/EventStream$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$6;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$6;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$2;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$2;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const-string v1, "Click Received"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 354
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/MediationTestActivity$6$2;->onEvent(Ljava/lang/Boolean;)V

    return-void
.end method
