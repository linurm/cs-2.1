.class public Lcom/vungle/publisher/display/view/VideoFragment$Factory;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/display/view/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/display/view/VideoFragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/vungle/publisher/display/view/VideoFragment;
    .locals 2

    .prologue
    .line 858
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "videoFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/VideoFragment;

    return-object v0
.end method

.method public static a(Lcom/vungle/publisher/display/view/VideoFragment;Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/display/view/VideoFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/display/view/VideoFragment;",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;",
            "Lcom/vungle/publisher/a;",
            ")",
            "Lcom/vungle/publisher/display/view/VideoFragment;"
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/Ad;->f()Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/Ad;->k()Lcom/vungle/publisher/db/model/Video;

    move-result-object v1

    .line 842
    if-eqz v1, :cond_0

    .line 843
    iput-object p2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    .line 844
    iput-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    .line 845
    invoke-static {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/vungle/publisher/display/view/VideoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/vungle/publisher/display/view/VideoFragment;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 852
    if-eqz p1, :cond_0

    .line 853
    const-string v0, "adStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/vungle/publisher/display/view/VideoFragment;Z)Z

    .line 855
    :cond_0
    return-void
.end method
