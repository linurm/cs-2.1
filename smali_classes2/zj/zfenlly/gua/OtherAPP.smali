.class public Lzj/zfenlly/gua/OtherAPP;
.super Ljava/lang/Object;
.source "OtherAPP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWillStartAPP(Landroid/app/Activity;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->setIsStartAPP()V

    return-void
.end method

.method public static setWillStartVpn(Landroid/app/Activity;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/WifiStatusLoader;->setStartVpn(Z)V

    return-void
.end method

.method public static setWillStopAPP(Landroid/app/Activity;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->setIsStopAPP()V

    return-void
.end method

.method public static startActivity3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lzj/zfenlly/gua/OtherAPP$1;

    invoke-direct {v1, p1, p2, p0}, Lzj/zfenlly/gua/OtherAPP$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static startActivity4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    if-eqz p3, :cond_0

    .line 47
    invoke-static {p3}, Lzj/zfenlly/gua/LoadInjectLib;->setTime(I)V

    .line 48
    invoke-static {p3}, Lzj/zfenlly/gua/SystemTime;->setTime(I)V

    .line 50
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
