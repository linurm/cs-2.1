.class public Lcom/heyzap/sdk/ads/HeyzapProxyActivity;
.super Landroid/app/Activity;
.source "HeyzapProxyActivity.java"


# static fields
.field public static SHADOW_CONTEXT:Lcom/heyzap/internal/ProxyActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->SHADOW_CONTEXT:Lcom/heyzap/internal/ProxyActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 26
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->SHADOW_CONTEXT:Lcom/heyzap/internal/ProxyActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/heyzap/internal/ProxyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->SHADOW_CONTEXT:Lcom/heyzap/internal/ProxyActivity;

    .line 28
    invoke-virtual {p0, p2, p3}, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->setResult(ILandroid/content/Intent;)V

    .line 29
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->finish()V

    .line 30
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 35
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->SHADOW_CONTEXT:Lcom/heyzap/internal/ProxyActivity;

    invoke-virtual {v0}, Lcom/heyzap/internal/ProxyActivity;->onBackPressed()V

    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->SHADOW_CONTEXT:Lcom/heyzap/internal/ProxyActivity;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/ProxyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "parent_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 19
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "parent_request_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 21
    return-void
.end method
