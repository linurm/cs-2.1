.class public Lzj/zfenlly/gua/WifiStatusLoader;
.super Ljava/lang/Object;
.source "WifiStatusLoader.java"


# static fields
.field private static sInstance:Lzj/zfenlly/gua/WifiStatusLoader;


# instance fields
.field private isStartApp:Z

.field private isStartVpn:Z

.field private mContext:Landroid/content/Context;

.field private mFloatView:Lzj/zfenlly/gua/FloatView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 21
    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    .line 24
    iput-object p1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;
    .locals 1

    .line 28
    sget-object v0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lzj/zfenlly/gua/WifiStatusLoader;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/WifiStatusLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    .line 31
    :cond_0
    sget-object p0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    return-object p0
.end method


# virtual methods
.method public StartAPP()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iput-boolean v1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    .line 74
    invoke-virtual {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->startVpn()V

    goto :goto_0

    .line 76
    :cond_0
    iget-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    if-eqz v0, :cond_1

    .line 77
    iput-boolean v1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 78
    invoke-virtual {p0, v1, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startO(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public WifiDisableDisplay()V
    .locals 2

    .line 58
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 60
    iget-object p0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    sget v0, Lzj/zfenlly/gua/RFile/Rfile;->wifi_off:I

    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public WifiEnableDisplay()V
    .locals 2

    .line 65
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 67
    iget-object p0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    sget v0, Lzj/zfenlly/gua/RFile/Rfile;->wifi_on:I

    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public isStartVpn()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    return p0
.end method

.method public setIsStartAPP()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    return-void
.end method

.method public setIsStopAPP()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    return-void
.end method

.method public setRecentsPanel(Lzj/zfenlly/gua/FloatView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    return-void
.end method

.method public setStartVpn(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    return-void
.end method

.method public startAPP(II)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lzj/zfenlly/gua/WifiStatusLoader;->startO(II)V

    return-void
.end method

.method public startO(II)V
    .locals 3

    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    const-class v2, Lzj/zfenlly/gua/OverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key"

    .line 101
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "value"

    .line 102
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 104
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    iget-object p0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startVpn()V
    .locals 4

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lzj/zfenlly/gua/activity/Vpn;->vpnPkg:Ljava/lang/String;

    sget-object v3, Lzj/zfenlly/gua/activity/Vpn;->vpnAct:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    iget-object p0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
