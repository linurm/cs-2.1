.class public Lcom/heyzap/common/mraid/internal/MRAIDLog;
.super Ljava/lang/Object;
.source "MRAIDLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;
    }
.end annotation


# static fields
.field private static LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL; = null

.field private static final TAG:Ljava/lang/String; = "MRAID"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->none:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    sput-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 36
    const-string v0, "MRAID - %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 66
    const-string v0, "[%s] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 42
    const-string v0, "MRAID - %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 73
    const-string v0, "[%s] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static getLoggingLevel()Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 48
    const-string v0, "MRAID - %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->info(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 80
    const-string v0, "[%s] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->i(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static setLoggingLevel(Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID - Changing logging level from :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". To:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->info(Ljava/lang/String;)V

    .line 101
    sput-object p0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    .line 102
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 54
    const-string v0, "MRAID - %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->verbose(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 87
    const-string v0, "[%s] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->v(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 60
    const-string v0, "MRAID - %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->warn(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog;->LEVEL:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->w(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method
