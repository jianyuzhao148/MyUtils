.class public Lio/jsonwebtoken/SignatureException;
.super Lio/jsonwebtoken/security/SecurityException;
.source "SignatureException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/jsonwebtoken/security/SecurityException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lio/jsonwebtoken/security/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
