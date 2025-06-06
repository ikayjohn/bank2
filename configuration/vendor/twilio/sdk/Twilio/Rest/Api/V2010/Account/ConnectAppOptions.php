<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Api\V2010\Account;

use Twilio\Options;
use Twilio\Values;

abstract class ConnectAppOptions
{
    /**
     * @param string $authorizeRedirectUrl URIL Twilio sends requests when users
     *                                     authorize
     * @param string $companyName The company name set for this Connect App.
     * @param string $deauthorizeCallbackMethod HTTP method Twilio WIll use making
     *                                          requests to the url
     * @param string $deauthorizeCallbackUrl URL Twilio will send a request when a
     *                                       user de-authorizes this app
     * @param string $description A more detailed human readable description
     * @param string $friendlyName A human readable name for the Connect App.
     * @param string $homepageUrl The URL users can obtain more information
     * @param string $permissions The set of permissions that your ConnectApp
     *                            requests.
     * @return UpdateConnectAppOptions Options builder
     */
    public static function update($authorizeRedirectUrl = Values::NONE, $companyName = Values::NONE, $deauthorizeCallbackMethod = Values::NONE, $deauthorizeCallbackUrl = Values::NONE, $description = Values::NONE, $friendlyName = Values::NONE, $homepageUrl = Values::NONE, $permissions = Values::NONE)
    {
        return new UpdateConnectAppOptions($authorizeRedirectUrl, $companyName, $deauthorizeCallbackMethod, $deauthorizeCallbackUrl, $description, $friendlyName, $homepageUrl, $permissions);
    }
}

class UpdateConnectAppOptions extends Options
{
    /**
     * @param string $authorizeRedirectUrl URIL Twilio sends requests when users
     *                                     authorize
     * @param string $companyName The company name set for this Connect App.
     * @param string $deauthorizeCallbackMethod HTTP method Twilio WIll use making
     *                                          requests to the url
     * @param string $deauthorizeCallbackUrl URL Twilio will send a request when a
     *                                       user de-authorizes this app
     * @param string $description A more detailed human readable description
     * @param string $friendlyName A human readable name for the Connect App.
     * @param string $homepageUrl The URL users can obtain more information
     * @param string $permissions The set of permissions that your ConnectApp
     *                            requests.
     */
    public function __construct($authorizeRedirectUrl = Values::NONE, $companyName = Values::NONE, $deauthorizeCallbackMethod = Values::NONE, $deauthorizeCallbackUrl = Values::NONE, $description = Values::NONE, $friendlyName = Values::NONE, $homepageUrl = Values::NONE, $permissions = Values::NONE)
    {
        $this->options['authorizeRedirectUrl'] = $authorizeRedirectUrl;
        $this->options['companyName'] = $companyName;
        $this->options['deauthorizeCallbackMethod'] = $deauthorizeCallbackMethod;
        $this->options['deauthorizeCallbackUrl'] = $deauthorizeCallbackUrl;
        $this->options['description'] = $description;
        $this->options['friendlyName'] = $friendlyName;
        $this->options['homepageUrl'] = $homepageUrl;
        $this->options['permissions'] = $permissions;
    }

    /**
     * The URL the user's browser will redirect to after Twilio authenticates the user and obtains authorization for this Connect App.
     * 
     * @param string $authorizeRedirectUrl URIL Twilio sends requests when users
     *                                     authorize
     * @return $this Fluent Builder
     */
    public function setAuthorizeRedirectUrl($authorizeRedirectUrl)
    {
        $this->options['authorizeRedirectUrl'] = $authorizeRedirectUrl;
        return $this;
    }

    /**
     * The company name set for this Connect App.
     * 
     * @param string $companyName The company name set for this Connect App.
     * @return $this Fluent Builder
     */
    public function setCompanyName($companyName)
    {
        $this->options['companyName'] = $companyName;
        return $this;
    }

    /**
     * The HTTP method to be used when making a request to the `DeauthorizeCallbackUrl`. Either `GET` or `POST`.
     * 
     * @param string $deauthorizeCallbackMethod HTTP method Twilio WIll use making
     *                                          requests to the url
     * @return $this Fluent Builder
     */
    public function setDeauthorizeCallbackMethod($deauthorizeCallbackMethod)
    {
        $this->options['deauthorizeCallbackMethod'] = $deauthorizeCallbackMethod;
        return $this;
    }

    /**
     * The URL to which Twilio will send a request when a user de-authorizes this Connect App.
     * 
     * @param string $deauthorizeCallbackUrl URL Twilio will send a request when a
     *                                       user de-authorizes this app
     * @return $this Fluent Builder
     */
    public function setDeauthorizeCallbackUrl($deauthorizeCallbackUrl)
    {
        $this->options['deauthorizeCallbackUrl'] = $deauthorizeCallbackUrl;
        return $this;
    }

    /**
     * A more detailed human readable description of the Connect App.
     * 
     * @param string $description A more detailed human readable description
     * @return $this Fluent Builder
     */
    public function setDescription($description)
    {
        $this->options['description'] = $description;
        return $this;
    }

    /**
     * A human readable description of the Connect App, with maximum length 64 characters.
     * 
     * @param string $friendlyName A human readable name for the Connect App.
     * @return $this Fluent Builder
     */
    public function setFriendlyName($friendlyName)
    {
        $this->options['friendlyName'] = $friendlyName;
        return $this;
    }

    /**
     * The public URL where users can obtain more information about this Connect App.
     * 
     * @param string $homepageUrl The URL users can obtain more information
     * @return $this Fluent Builder
     */
    public function setHomepageUrl($homepageUrl)
    {
        $this->options['homepageUrl'] = $homepageUrl;
        return $this;
    }

    /**
     * A comma-separated list of permssions you will request FROM accounts of this ConnectApp.  Valid permssions are `get-all` or `post-all`.
     * 
     * @param string $permissions The set of permissions that your ConnectApp
     *                            requests.
     * @return $this Fluent Builder
     */
    public function setPermissions($permissions)
    {
        $this->options['permissions'] = $permissions;
        return $this;
    }

    /**
     * Provide a friendly representation
     * 
     * @return string Machine friendly representation
     */
    public function __toString()
    {
        $options = array();
        foreach ($this->options as $key => $value) {
            if ($value != Values::NONE) {
                $options[] = "$key=$value";
            }
        }
        return '[Twilio.Api.V2010.UpdateConnectAppOptions ' . implode(' ', $options) . ']';
    }
}
