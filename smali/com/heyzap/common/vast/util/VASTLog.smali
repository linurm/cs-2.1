.class public Lcom/heyzap/common/vast/util/VASTLog;
.super Ljava/lang/Object;
.source "VASTLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;
    }
.end annotation


# static fields
.field private static LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "VAST"

    sput-object v0, Lcom/heyzap/common/vast/util/VASTLog;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->none:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    sput-object v0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->debug:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/heyzap/common/vast/util/VASTLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->error:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 63
    invoke-static {p0, p1}, Lcom/heyzap/common/vast/util/VASTLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->error:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 69
    invoke-static {p0, p1}, Lcom/heyzap/common/vast/util/VASTLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :cond_0
    return-void
.end method

.method private static formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    const-string v0, "[%s] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggingLevel()Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->info:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 50
    const-string v0, "[%s] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {p0, v0}, Lcom/heyzap/common/vast/util/VASTLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->info(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public static setLoggingLevel(Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;)V
    .locals 4

    .prologue
    .line 74
    const-string v0, "[%s] Changing logging level from: %s to: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->info(Ljava/lang/String;)V

    .line 75
    sput-object p0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    .line 76
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->verbose:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 38
    invoke-static {p0, p1}, Lcom/heyzap/common/vast/util/VASTLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->verbose(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/heyzap/common/vast/util/VASTLog;->LEVEL:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->warning:Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/heyzap/common/vast/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 57
    invoke-static {p0, p1}, Lcom/heyzap/common/vast/util/VASTLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->warn(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
