.class public Lzj/zfenlly/gua/OverActivity;
.super Landroid/app/Activity;
.source "OverActivity.java"


# instance fields
.field private final DEC_SEC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x3

    .line 21
    iput v0, p0, Lzj/zfenlly/gua/OverActivity;->DEC_SEC:I

    return-void
.end method


# virtual methods
.method public getLunchActivity()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 93
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p0
.end method

.method getStartAppAct()Ljava/lang/String;
    .locals 2

    const-string v0, "gua"

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1}, Lzj/zfenlly/gua/OverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "act"

    .line 100
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getLunchActivity()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getStartAppPkg()Ljava/lang/String;
    .locals 2

    const-string v0, "gua"

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, v1}, Lzj/zfenlly/gua/OverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pkg"

    .line 86
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget p1, Lzj/zfenlly/gua/RFile/Rfile;->over_main:I

    invoke-virtual {p0, p1}, Lzj/zfenlly/gua/OverActivity;->setContentView(I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "value"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getStartAppPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getStartAppAct()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lzj/zfenlly/gua/OtherAPP;->startActivity4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setTime(I)V
    .locals 6

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 119
    div-long v2, v0, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const-string p1, "alarm"

    .line 120
    invoke-virtual {p0, p1}, Lzj/zfenlly/gua/OverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0, v1}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method
