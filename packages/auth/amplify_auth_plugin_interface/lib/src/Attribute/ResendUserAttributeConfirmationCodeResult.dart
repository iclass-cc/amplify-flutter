/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import '../types/AuthCodeDeliveryDetails.dart';

/// Wraps the result of a resend user confirmation code operation.
class ResendUserAttributeConfirmationCodeResult {
  /// Contains the delivery details of the confirmation code that was sent to the user.
  AuthCodeDeliveryDetails codeDeliveryDetails;

  // ignore: public_member_api_docs
  ResendUserAttributeConfirmationCodeResult({required codeDeliveryDetails})
      : this.codeDeliveryDetails = AuthCodeDeliveryDetails(
            attributeName: codeDeliveryDetails["attributeName"] ?? "",
            deliveryMedium: codeDeliveryDetails["deliveryMedium"] ?? "",
            destination: codeDeliveryDetails["destination"] ?? "");
}
