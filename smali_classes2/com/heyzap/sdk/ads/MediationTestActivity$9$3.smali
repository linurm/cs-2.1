.class Lcom/heyzap/sdk/ads/MediationTestActivity$9$3;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$9;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$3;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$3;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$9;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const-string v1, "Close Received"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 474
    return-void
.end method
