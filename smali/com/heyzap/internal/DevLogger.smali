.class public Lcom/heyzap/internal/DevLogger;
.super Ljava/lang/Object;
.source "DevLogger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Heyzap"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    const-string v0, "Heyzap"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    const-string v0, "Heyzap"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "Heyzap"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Heyzap"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    const-string v0, "Heyzap"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method

.method public static warn(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    const-string v0, "Heyzap"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    return-void
.end method
